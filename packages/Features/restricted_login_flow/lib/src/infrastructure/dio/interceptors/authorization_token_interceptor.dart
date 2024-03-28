import 'package:dio/dio.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/infrastructure/maya_method_channel/maya_method_channel.dart';

class AuthorizationTokenInterceptor extends Interceptor {
  final IMayaMethodChannel _methodChannel;

  AuthorizationTokenInterceptor(this._methodChannel);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _methodChannel.get(
          methodChannelData: MethodChannelData.sessionToken,
        ) ??
        '';
    final accessToken = await _methodChannel.get(
          methodChannelData: MethodChannelData.accessToken,
        ) ??
        '';

    options.headers.addAll(
      <String, String>{
        Header.token: token,
        Header.authorization: 'Bearer $accessToken',
      },
    );
    return super.onRequest(options, handler);
  }
}
