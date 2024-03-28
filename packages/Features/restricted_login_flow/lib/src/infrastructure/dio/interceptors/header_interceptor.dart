import 'package:dio/dio.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      <String, String>{
        Header.contentType: MediaType.json,
      },
    );
    return super.onRequest(options, handler);
  }
}
