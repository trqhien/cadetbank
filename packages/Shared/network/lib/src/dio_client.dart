import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:network/src/interceptors/authorization_token_interceptor.dart';
import 'package:network/src/interceptors/error_interceptor.dart';
import 'package:network/src/interceptors/header_interceptor.dart';
import 'package:network/src/interceptors/maya_authorization_token_interceptor.dart';
import 'package:network/src/interceptors/refresh_token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:local_storage/local_storage.dart';

class DioClient {
  DioClient._();

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

  static createMayaDioInstance({
    required String baseUrl
  }) {
    final baseOptions = BaseOptions(baseUrl: baseUrl);
    final dio = Dio(baseOptions);
    dio.interceptors.add(HeaderInterceptor());
    dio.interceptors.add(
      MayaAuthorizationTokenInterceptor(),
    );
    if (kDebugMode) {
      // dio.interceptors.add(LoggerInterceptor());
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
    }
    dio.interceptors.add(ErrorInterceptor());

    return dio;
  }
}
