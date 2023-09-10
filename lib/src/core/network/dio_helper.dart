import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHelper {
  DioHelper._();

  static Dio dio() {
    final dio = Dio(
      BaseOptions(
        // baseUrl: "https://1fc99592-3686-4f86-9125-961fc3c2ba6f.mock.pstmn.io",
        baseUrl: "http://localhost:3000/api",
        // connectTimeout: const Duration(seconds: 10),
        // receiveTimeout: const Duration(seconds: 10),
      )
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90
      )
    );

    // const publicPinsCsv = String.fromEnvironment(JsonKeys.spkiPins);
    // final csPublicKeyPins =
    //     publicPinsCsv.separateStringWithToken(Constants.csvSplitter);

    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (client) => SpkiPinner(csPublicKeyPins);

    // dio.interceptors.add(HeaderInterceptor());
    // if (!DevUtils.isUnitTest) {
    //   dio.interceptors.add(
    //     DevUtils.on && DevUtils.useAuthMock
    //         ? MockAuthorizationTokenInterceptor(
    //             _methodChannel,
    //             dio.options.baseUrl,
    //           )
    //         : AuthorizationTokenInterceptor(_methodChannel),
    //   );
    // }
    // if (kDebugMode) {
    //   dio.interceptors.add(LoggerInterceptor());
    //   //Only prints on test env
    //   // ignore: avoid_print
    //   print('The pins are: $csPublicKeyPins');
    //   SpkiPinner.shouldShowLogs = kDebugMode;
    // }
    // dio.interceptors.add(CrashMonitoringLogger());
    // dio.interceptors.add(ErrorInterceptor());

    return dio;
  }
}