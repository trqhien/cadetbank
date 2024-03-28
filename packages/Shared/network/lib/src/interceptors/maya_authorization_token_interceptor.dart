import 'package:dio/dio.dart';
import 'package:local_storage/local_storage.dart';

class MayaAuthorizationTokenInterceptor extends Interceptor {
  MayaAuthorizationTokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await LocalStorage.getString(StorageKey.refreshRoken); // SessionManager().accessToken;

    options.headers.addAll(
      <String, String>{
        "Authorization": 'Bearer $accessToken',
      },
    );
    return super.onRequest(options, handler);
  }
}
