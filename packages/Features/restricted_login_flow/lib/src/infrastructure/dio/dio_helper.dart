import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/infrastructure/crash_monitoring/crash_monitoring_helper.dart';
import 'package:restricted_login_flow/src/infrastructure/dio/interceptors/interceptors.dart';
import 'package:restricted_login_flow/src/infrastructure/maya_method_channel/maya_method_channel.dart';
import 'package:spki_pinner/spki_pinner.dart';

class DioHelper {
  DioHelper._();

  static Dio createDioInstance(
    IMayaMethodChannel methodChannel,
    ICrashMonitoringHelper crashMonitoringHelper,
  ) {
    final baseOptions = BaseOptions(
      baseUrl: const String.fromEnvironment(JsonKeys.environmentVarBaseUrl),
    );
    final dio = Dio(baseOptions);
    const publicPinsCsv = String.fromEnvironment(JsonKeys.spkiPins);
    final csPublicKeyPins =
        publicPinsCsv.separateStringWithToken(Strings.csvSplitter);

    //* Dio 4.0.4 implementation for SPKI pinning
    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (client) => SpkiPinner(csPublicKeyPins);

    //* Dio 5.0.3 implementation for SPKI pinning
    if (kReleaseMode) {
      dio.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          return SpkiPinner(csPublicKeyPins);
        },
      );
    }

    dio.interceptors.add(HeaderInterceptor());
    dio.interceptors.add(AuthorizationTokenInterceptor(methodChannel));
    if (kDebugMode) {
      dio.interceptors.add(LoggerInterceptor());
      //Only prints on test env
      // ignore: avoid_print
      print('The pins are: $csPublicKeyPins');
    }
    dio.interceptors.add(
      CrashMonitoringLogger(
        crashMonitoringHelper: crashMonitoringHelper,
        onDioError: (Object error, int? statusCode) {
          crashMonitoringHelper.recordError(
            error,
            stackTrace: StackTrace.current,
            reason: statusCode?.toString() ?? '',
          );
        },
      ),
    );
    dio.interceptors.add(ErrorInterceptor());

    return dio;
  }
}
