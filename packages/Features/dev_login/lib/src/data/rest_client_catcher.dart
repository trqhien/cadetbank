import 'package:dio/dio.dart';
import 'package:network/network.dart';
import 'package:paymaya_dev_login/src/commons/result.dart';
import 'package:paymaya_dev_login/src/resources/strings.dart';

///Callback to initiate the [Dio]-related tasks that expects a [Result] with generics
typedef OnRequestCallback<T> = Future<Result<T>> Function();

class RestClientCatcher {
  const RestClientCatcher._();

  ///Function that lets you safely call a backend function.
  ///
  ///Use [onRequest] to make your network call returning the successful [Result] inside the blo
  ///and catches any possible [DioException]s and [Exception]s and returns their processed failure classes through
  static Future<Result<T>> request<T>({
    required OnRequestCallback<T> onRequest,
  }) async {
    try {
      return await onRequest();
    } on DioException catch (dioError) {
      if (dioError.error is NetworkFailure) {
        final networkFailure = dioError.error as NetworkFailure;
        return Result.failure(AppFailure.networkFailure(networkFailure));
      } else if (dioError.error is SdkFailure) {
        final sdkFailure = dioError.error as SdkFailure;
        return Result.failure(AppFailure.sdkFailure(sdkFailure));
      } else {
        final failure = SdkFailure.generic(
          Exception(Strings.dioParsingFailed),
        );
        return Result.failure(AppFailure.sdkFailure(failure));
      }
    } on Exception catch (e, s) {
      final failure = SdkFailure.runtimeError(
        exception: e,
        stacktrace: s,
      );
      return Result.failure(AppFailure.sdkFailure(failure));
    } on Error catch (e, s) {
      final failure = SdkFailure.runtimeError(
        exception: Exception(e.toString()),
        stacktrace: s,
      );
      return Result.failure(AppFailure.sdkFailure(failure));
    }
  }
}
