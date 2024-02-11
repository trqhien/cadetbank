import 'package:cadetbank/src/network/dio_client.dart';
import 'package:cadetbank/src/core/validators/validator_collections/username_validator.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/users/response/update_user_details_response.dart';
import 'package:flutter/material.dart';

class CreateUsernameProvider extends ChangeNotifier {
  CreateUsernameProvider()
    : _currentUsername = "",
      _isLoading = false;

  final dio = DioClient.shared.dio;
  final _usernameValidator = UsernameValidator();
  
  String _currentUsername;
  bool _isLoading;
  String? _apiError;
  UsernameValidatorFailure? _validationError;

  bool get isLoading => _isLoading;
  String? get apiError => _apiError;
  UsernameValidatorFailure? get validationError => _validationError;
  bool get isFlowValid => validationError == null;

  void validateUsername() {
    _validationError = _usernameValidator
      .validate(_currentUsername)
      .fold(
        (l) => l, 
        (r) => null
      );

    notifyListeners();
  }

  void onUsernameChanged(String value) {
    _currentUsername = value;
    validateUsername();
  }

  Future<UpdateUserDetailsResponse?> updateUsername() async {
    _apiError = null;

    // TODO: 13. Update loading 
    // _isLoading = true;
    // notifyListeners();

    UpdateUserDetailsResponse? updateUserRes;

    await Future.delayed(const Duration(seconds: 2));

    // try {
    //   final res = await dio.post<Map<String, dynamic>>(
    //     "/users/update",
    //     data: {
    //       "username": _currentUsername,
    //     }
    //   );

    //   final apiRes = ApiResponse.fromJson(res.data!, UpdateUserDetailsResponse.fromJson);

    //   if (apiRes.isSuccessful) {
    //     updateUserRes = apiRes.response!;
    //   } else {
    //     _apiError = apiRes.error!.reason;
    //   }
    // } catch (err) {
    //   _apiError = err.toString();
    // }

    // TODO: 15. Update loading 
    // _isLoading = false;
    // notifyListeners();

    return updateUserRes;
  }
}