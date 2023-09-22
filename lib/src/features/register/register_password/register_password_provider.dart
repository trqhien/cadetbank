import 'package:cadetbank/src/network/dio_client.dart';
import 'package:cadetbank/src/core/validators/validator_collections/password_validator.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/login_response.dart';
import 'package:flutter/material.dart';

class RegisterPasswordProvider extends ChangeNotifier {
  RegisterPasswordProvider({
    String? currentPassword,
    String? currentConfirmedPassword
  })
    : _currentPassword = currentPassword ?? "",
      _currentConfirmedPassword = currentConfirmedPassword ?? "",
      _isRegisterValid = false,
      _isLoading = false;

  final _passwordValidator = PasswordValidator();
  final _dio = DioClient.shared.dio; 

  bool _isLoading;
  
  String _currentPassword;
  String _currentConfirmedPassword;

  String? _passwordErrorText;
  String? _confirmPasswordlErrorText;
  String? _apiErrorText;

  bool _isRegisterValid;

  String get currentPassword => _currentPassword;
  String get currentConfirmedPassword => _currentConfirmedPassword;
  String? get passwordErrorText => _passwordErrorText;
  String? get confirmPasswordlErrorText => _confirmPasswordlErrorText;
  String? get apiErrorText => _apiErrorText;
  bool get isLoading => _isLoading;
  
  bool get isRegisterValid => _isRegisterValid;

  void validatePasswords() {
    if (_currentPassword.isEmpty) {
      _passwordErrorText = null;
    } else {
      _passwordErrorText = _validatePassword(_currentPassword);
    }

    if (_currentConfirmedPassword.isEmpty) {
      _confirmPasswordlErrorText = null;
    } else {
      _confirmPasswordlErrorText = _validatePassword(_currentConfirmedPassword);
    }

    if (_passwordErrorText == null 
      && _confirmPasswordlErrorText == null 
      && _currentConfirmedPassword.isNotEmpty
    ) {
      _confirmPasswordlErrorText = _validatePasswordMissmatched(_currentPassword, _currentConfirmedPassword);
    }

    _isRegisterValid = _currentPassword.isNotEmpty
      && _currentConfirmedPassword.isNotEmpty
      && _passwordErrorText == null 
      && _confirmPasswordlErrorText == null;

    notifyListeners();
  }

  Future<LoginReponse?> register({
    required String email,
    required String accountType,
    required String phone,
  }) async {
    _apiErrorText = null;
    _isLoading = true;
    notifyListeners();

    LoginReponse? loginReponse;

    try {
      final response = await _dio.get<Map<String, dynamic>>(
        "/users/register",
        data: {
          "email": email,
          "password": _currentPassword,
          "accountType": accountType,
          "phone": "+84$phone"
        }
      );

      final registerData = ApiResponse.fromJson(response.data!, LoginReponse.fromJson);

      if (registerData.isSuccessful) {
        loginReponse = registerData.response!;
      } else {
        _apiErrorText = registerData.error!.reason;
      }
    } catch (err) {
      _apiErrorText = err.toString();
    }

    _isLoading = false;

    notifyListeners();
    return loginReponse;
  }

  String? _validatePassword(String password) {
    final error = _passwordValidator.checkError(password);
    return error?.reason;
  }

  String? _validatePasswordMissmatched(String password, String confirmPassword) {
    return password == confirmPassword
      ? null
      : "Password mismatched";
  }

  void onPasswordChanged(String value) {
    _currentPassword = value;
    validatePasswords();
  }

  void onConfirmedPasswordChanged(String value) {
    _currentConfirmedPassword = value;
    validatePasswords();
  }
}