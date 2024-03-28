import 'package:flutter/foundation.dart';
import 'package:maya_lookout/maya_lookout.dart';
import 'package:maya_lookout/services/crash_monitoring/crash_monitoring_service.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';

abstract class ICrashMonitoringHelper {
  ///Initializes the necessary packages from [MayaLookout] for crash monitoring to work.
  Future<void> initialize();

  ///Adds an entry for an error or exception that occurred.
  ///
  ///Additional data that may be passed are the error's [stackTrace], [reason], and whether the error [isFatal].
  Future<void> recordError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    bool isFatal = false,
    Map<String, dynamic>? additionalData,
  });

  ///Logs information which connects to a [recordError] call.
  ///
  ///The current implementation for crash monitoring is Firebase Crashlytics.
  ///The behavior of log is to log everything up to 64kb and it should show on the next
  ///Entry of a [recordError] call.
  Future<void> log(String message);

  ///Crashes the app.
  ///
  ///# WARNING: DO NOT LEAVE THIS CALLED ANYWHERE IN THE APP
  ///### This should only be used for testing crash monitoring.
  void crash();
}

class CrashMonitoringHelper implements ICrashMonitoringHelper {
  @override
  Future<void> initialize() async {
    await MayaLookout.initialize(Strings.crashlyticsPackageName);

    FlutterError.onError = (errorDetails) {
      recordError(errorDetails);
    };
    PlatformDispatcher.instance.onError = (e, s) {
      recordError(e, stackTrace: s);
      return true;
    };
  }

  @override
  void crash() => MayaLookout.crashMonitoring.crash();

  @override
  Future<void> log(String message) async => MayaLookout.crashMonitoring.log(
        message,
        packageName: Strings.crashlyticsPackageName,
      );

  @override
  Future<void> recordError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    bool isFatal = false,
    Map<String, dynamic>? additionalData,
  }) async {
    final Map<String, dynamic> payload = <String, dynamic>{};
    if (additionalData != null) {
      payload.addAll(additionalData);
    }
    final data =
        additionalData != null ? LookoutCrashExtras(customData: payload) : null;
    await MayaLookout.crashMonitoring.recordError(
      error,
      stackTrace: stackTrace,
      reason: reason,
      isFatal: isFatal,
      additionalData: data,
      packageName: Strings.crashlyticsPackageName,
    );
  }
}
