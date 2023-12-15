import 'package:dio/dio.dart';
import 'package:network/src/interceptors/authorization_token_interceptor.dart';
import 'package:network/src/interceptors/refresh_token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:local_storage/local_storage.dart';

class DioClient {
  DioClient._();

  // static DioClient shared = DioClient._();

  // Dio get dio => _createDioInstance();

  static Dio createDioInstance() {
    final dio = Dio(
      BaseOptions(
        // baseUrl: "https://1fc99592-3686-4f86-9125-961fc3c2ba6f.mock.pstmn.io",
        baseUrl: "http://localhost:80/api",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      )
    );
    dio.interceptors.add(AuthorizationTokenInterceptor());
    dio.interceptors.add(
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
    dio.interceptors.add(
      RefreshTokenInterceptor(
        dio: dio,
        exceptPaths: [
          "/auth/login",
          "/auth/refresh-token"
        ])
    );

    return dio;
  }
}
