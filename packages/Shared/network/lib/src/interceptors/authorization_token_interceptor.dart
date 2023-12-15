import 'package:dio/dio.dart';
import 'package:local_storage/local_storage.dart';

class AuthorizationTokenInterceptor extends Interceptor {
  AuthorizationTokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(
      {
        "authorization": await LocalStorage.getString(StorageKey.token),
      },
    );
    return super.onRequest(options, handler);
  }
}
