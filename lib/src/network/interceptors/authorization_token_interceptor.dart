import 'package:dio/dio.dart';

class AuthorizationTokenInterceptor extends Interceptor {
  AuthorizationTokenInterceptor(this.token);

  final String token;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(
      <String, String>{
        "authorization": token,
      },
    );
    return super.onRequest(options, handler);
  }
}
