import 'package:dio/dio.dart';
import 'package:network/src/core/network_failure.dart';
import 'package:network/src/core/sdk_failure.dart';

const _nullResponse = 'Response is null';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      if (err.response != null && err.response!.data != null) {
        _rejectUnexpected(err, handler);
      } else {
        _rejectRequest(
          error: err,
          handler: handler,
          failure: const NetworkFailure.unexpected(message: _nullResponse),
        );
      }
    } on Exception catch (e, s) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: SdkFailure.runtimeError(exception: e, stacktrace: s),
        ),
      );
    } on Error catch (e, s) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: SdkFailure.runtimeError(
            exception: Exception(e.toString()),
            stacktrace: s,
          ),
        ),
      );
    }
  }

  void _rejectUnexpected(
    DioException err,
    ErrorInterceptorHandler handler,
  ) =>
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: NetworkFailure.unexpected(message: err.message ?? ''),
        ),
      );

  ///Tells dio to reject the request, passing in the [error] containing the [failure] that has been described by the failure above.
  void _rejectRequest({
    required DioException error,
    required ErrorInterceptorHandler handler,
    required NetworkFailure failure,
  }) =>
      handler.reject(
        DioException(
          requestOptions: error.requestOptions,
          error: failure,
        ),
      );
}
