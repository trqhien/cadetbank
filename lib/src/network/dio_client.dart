import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/network/interceptors/refresh_token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  DioClient._();

  static DioClient shared = DioClient._();

  Dio get dio => _createDioInstance();

  Dio _createDioInstance() {
    final _dio = Dio(
      BaseOptions(
        // baseUrl: "https://1fc99592-3686-4f86-9125-961fc3c2ba6f.mock.pstmn.io",
        baseUrl: "http://localhost:3000/api",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      )
    );
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async => handler.next(
        options..headers.addAll({
          "authorization": await Storage.getString(StorageKey.token),
        })
      )
    ));
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90
      )
    );
    _dio.interceptors.add(
      RefreshTokenInterceptor(
        dio: _dio,
        exceptPaths: [
          "/auth/login",
          "/auth/refresh-token"
        ])
    );

    return _dio;
  }
}
