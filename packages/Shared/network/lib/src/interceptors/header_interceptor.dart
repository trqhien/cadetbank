import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      <String, String>{
        "Content-Type": "application/json",
      },
    );
    return super.onRequest(options, handler);
  }
}
