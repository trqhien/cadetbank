import 'package:cadetbank/src/core/network/interceptors/authorization_token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  DioHelper._();

  static DioHelper shared = DioHelper._();

  Dio? dio;

  void createInstance() {
    if (dio != null) return;
    dio = Dio(
      BaseOptions(
        // baseUrl: "https://1fc99592-3686-4f86-9125-961fc3c2ba6f.mock.pstmn.io",
        baseUrl: "http://localhost:3000/api",
        // connectTimeout: const Duration(seconds: 10),
        // receiveTimeout: const Duration(seconds: 10),
      )
    );
    dio!.interceptors.add(
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

  void updateAuthorizationToken(String token) {
    if (dio == null) {
      throw Exception("Dio instance hasn't been created. Did you forget to call DioHelper.share.createInstance()");
    }
    
    dio?.interceptors.add(
      AuthorizationTokenInterceptor(token),
    );

  }
}