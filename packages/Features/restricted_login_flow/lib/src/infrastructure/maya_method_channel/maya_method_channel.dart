import 'package:flutter/services.dart';

abstract class IMayaMethodChannel {
  Future<String?> get({required MethodChannelData methodChannelData});
}

class AppMethodChannel implements IMayaMethodChannel {
  static const _channel = MethodChannel('packages/restricted_login_flow');

  @override
  Future<String?> get({required MethodChannelData methodChannelData}) async {
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        methodChannelData.getMethodName(),
      );
      return result?[methodChannelData.getDataKey()] as String;
    } catch (_) {
      return null;
    }
  }

  Future<String?> onSessionTimeout() async {
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        MethodChannelData.sessionTimeout.getMethodName(),
      );
      return result?[MethodChannelData.sessionTimeout.getDataKey()] as String;
    } catch (_) {
      return null;
    }
  }

  Future<void> logout() {
    return _channel.invokeMethod<void>('logout');
  }
}

enum MethodChannelData {
  sessionToken,
  accessToken,
  mobileNumber,
  shieldSessionId,
  certificatePin,
  sessionTimeout,
  restrictionCode,
}

extension MethodChannelDataExtension on MethodChannelData {
  String getMethodName() {
    switch (this) {
      case MethodChannelData.sessionToken:
        return 'getSessionToken';
      case MethodChannelData.accessToken:
        return 'getAccessToken';
      case MethodChannelData.mobileNumber:
        return 'getMin';
      case MethodChannelData.shieldSessionId:
        return 'getShieldSessionId';
      case MethodChannelData.certificatePin:
        return 'getPinningFingerprint';
      case MethodChannelData.sessionTimeout:
        return 'onSessionTimeout';
      case MethodChannelData.restrictionCode:
        return 'getRestrictionCode';
    }
  }

  String getDataKey() {
    switch (this) {
      case MethodChannelData.sessionToken:
        return 'session_token';
      case MethodChannelData.accessToken:
        return 'access_token';
      case MethodChannelData.mobileNumber:
        return 'min';
      case MethodChannelData.shieldSessionId:
        return 'shield_session_id';
      case MethodChannelData.certificatePin:
        return 'pinning_fingerprint';
      case MethodChannelData.sessionTimeout:
        return 'session_token';
      case MethodChannelData.restrictionCode:
        return 'restriction_code';
    }
  }
}
