import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/infrastructure/crash_monitoring/crash_monitoring_helper.dart';

typedef CrashCallback = Function(Object, int?);

//* Ignore from coverage since its firebase that needs to be tested in this case
// coverage:ignore-file
class CrashMonitoringLogger extends Interceptor {
  ///Callback used to handle what happens when an error is finalized for Lookout reporting.
  ///
  ///This is done so that the entry on Firebase Crashlytics won't default to the stacktrace of `MayaLookout`
  final CrashCallback onDioError;
  final ICrashMonitoringHelper crashMonitoringHelper;
  CrashMonitoringLogger({
    required this.onDioError,
    required this.crashMonitoringHelper,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    crashMonitoringHelper.log(
      LogEvents.logApiCall(options.path),
    );
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    super.onError(err, handler);
    try {
      final Map<String, dynamic> additionalData = <String, dynamic>{};
      if (err.response != null && err.response!.data != null) {
        final jsonResponse = err.response!.data is String
            ? jsonDecode(err.response!.data as String) as Map<String, dynamic>
            : err.response!.data as Map<String, dynamic>;
        final json = jsonResponse.containsKey(JsonKeys.error)
            ? jsonResponse[JsonKeys.error] as Map<String, dynamic>
            : jsonResponse;
        final additionalPayload = Map<String, dynamic>.from(json);
        if (additionalPayload.containsKey(JsonKeys.reason)) {
          if (additionalPayload[JsonKeys.reason] is String) {
            final reason = additionalPayload[JsonKeys.reason] as String;
            final finalReason = reason.scrubbedWithSensitiveInfo;
            additionalPayload[JsonKeys.reason] = finalReason;
          }
        }
        additionalData.addAll(additionalPayload);
      }
      final statusCode = err.response?.statusCode;
      await crashMonitoringHelper.log(
        LogEvents.logApiError('Status: $statusCode, Message: ${err.message}'),
      );
      if (additionalData.isNotEmpty) {
        await crashMonitoringHelper.log(
          LogEvents.logAdditionalData(additionalData.toString()),
        );
      }
      onDioError(err, statusCode);
    } on Exception catch (e) {
      await crashMonitoringHelper.log(
        LogEvents.logApiError('failed to parse endpoint data'),
      );
      onDioError(e, null);
    } on Error catch (e) {
      await crashMonitoringHelper.log(
        LogEvents.logApiError('failed to parse endpoint data'),
      );
      onDioError(e, null);
    }
  }
}
