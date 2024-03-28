import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    //TODO: NO HANDLING YET, ALL ERRORS WILL RESULT FOR EMPTY BALANCE
    try {
      if (err.response != null && err.response!.data != null) {
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: err,
          ),
        );
      }
    } on Exception catch (e, _) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: e,
        ),
      );
    } on Error catch (e, _) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: e,
        ),
      );
    }
  }
}
