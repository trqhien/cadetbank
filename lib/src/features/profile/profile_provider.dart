import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/logout_response.dart';
import 'package:cadetbank/src/network/dio_client.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  final dio = DioClient.shared.dio;

  bool _isLoading = false;
  String? _apiError;

  bool get isLoading => _isLoading;
  String? get apiError => _apiError;

  Future<LogoutResponse?> logout() async {
    _apiError = null;
    _isLoading = true;

    notifyListeners();

    LogoutResponse? logoutResponse;

    try {
      final res = await dio.post<Map<String, dynamic>>("/auth/logout");

      final apiRes = ApiResponse.fromJson(res.data!, LogoutResponse.fromJson);

      if (apiRes.isSuccessful) {
        logoutResponse = apiRes.response!;
        Storage.remove(StorageKey.token);
        Storage.remove(StorageKey.refreshRoken);
      } else {
        _apiError = apiRes.error!.reason;
      }
    } catch (err) {
      _apiError = err.toString();
    }

    _isLoading = false;
    notifyListeners();

    return logoutResponse;
  }
}