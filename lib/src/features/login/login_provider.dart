import 'package:cadetbank/src/core/network/dio_helper.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/login_response.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final dio = DioHelper.shared.dio!;

  bool _isLoading = false;
  String? _error;
  bool _canProceed = false;
  String? _currentEmail;
  String? _currentPassword;

  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get canProceed => _canProceed;

  void validate() {
    _canProceed = _currentEmail != null
      && _currentEmail!.isNotEmpty
      && _currentPassword != null
      && _currentPassword!.isNotEmpty;
    notifyListeners();
  }

  void onEmailChanged(String email) {
    _currentEmail = email;
    validate();
  }

  void onPasswordChanged(String password) {
    _currentPassword = password;
    validate();
  }

  Future<LoginReponse?> login() async {
    if (!canProceed) return Future.value(null);
    
    _error = null;
    _isLoading = true;
    notifyListeners();

    LoginReponse? loginResponse;

    try {
      final response = await dio.post<Map<String, dynamic>>(
        "/auth/login",
        data: {
          "email": _currentEmail,
          "password": _currentPassword,
        }
      );

      final loginData = ApiResponse.fromJson(response.data!, LoginReponse.fromJson);

      if (loginData.isSuccessful) {
        loginResponse = loginData.response!;
      } else {
        _error = loginData.error!.reason;
      }
    } catch (err) {
      _error = err.toString();
    }

    _isLoading = false;
    notifyListeners();

    return loginResponse;
  }
}
