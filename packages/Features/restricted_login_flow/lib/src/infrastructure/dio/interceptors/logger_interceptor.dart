import 'package:dio/dio.dart';

class LoggerInterceptor extends LogInterceptor {
  LoggerInterceptor()
      : super(
          request: true,
          requestBody: true,
          responseHeader: true,
          requestHeader: true,
          responseBody: true,
          error: true,
        );
}
