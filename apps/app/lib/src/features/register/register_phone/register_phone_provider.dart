// import 'package:cadetbank/src/core/validators/validator_collections/mobile_phone_validator.dart';
// import 'package:flutter/material.dart';

// class RegisterPhoneProvider extends ChangeNotifier {
//   RegisterPhoneProvider({String? currentPhone})
//     : _currentPhone = currentPhone ?? "",
//       _isRegisterValid = false;

//   final _phoneValidator = MobilePhoneValidator();
  
//   String _currentPhone;
//   String? _phoneErrorText;
//   bool _isRegisterValid;

//   String get currentPhone => _currentPhone;
//   String? get phoneErrorText => _phoneErrorText;
//   bool get isRegisterValid => _isRegisterValid;

//   void validatePhone() {
//     if (_currentPhone.isEmpty) {
//       _phoneErrorText = null;
//     } else {
//       _phoneErrorText = _phoneValidator.checkError(_currentPhone)?.reason;
//     }

//     _isRegisterValid = _currentPhone.isNotEmpty
//       && _phoneErrorText == null;

//     notifyListeners();
//   }

//   void onPhoneChanged(String value) {
//     _currentPhone = value;
//     validatePhone();
//   }
// }