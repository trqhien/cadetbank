import 'package:dio/dio.dart';
import 'package:network/src/api_response.dart';
import 'package:local_storage/local_storage.dart';

class RefreshTokenInterceptor extends Interceptor {
  RefreshTokenInterceptor({required this.dio, this.exceptPaths = const []});
  final Dio dio;
  final List<String> exceptPaths;

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (exceptPaths.contains(response.requestOptions.path)) {
      handler.next(response);
      return;
    }

    final res = ApiResponse.fromJson(response.data, (data) => data);
    final refreshToken = await LocalStorage.getString(StorageKey.refreshRoken);
    
    if (res.code == 3 && refreshToken != null) {
      try {
        final newTokenRes = await dio.post<Map<String, dynamic>>(
          "/auth/refresh-token",
          data: {
            "refreshToken": refreshToken
          }
        );
        final newToken = newTokenRes.data?["accessToken"] as String?;

        if (newToken != null) {
          await LocalStorage.setString(StorageKey.token, newToken);
          final newRes = await dio.fetch(response.requestOptions);
          // handler.resolve(newRes);
          handler.next(newRes);
        } else {
          handler.reject(DioException(requestOptions: response.requestOptions));
        }
      } on DioException catch (err) {
        handler.reject(err);
      } catch (err) {
        handler.reject(DioException(
          requestOptions: response.requestOptions,
          message: "$err"
        ));
      }
    } else {
      handler.resolve(response);
    }
  }
}