// import 'package:cadetbank/src/core/validators/validator_collections/email_validator.dart';
// import 'package:flutter/material.dart';

// class RegisterEmailProvider extends ChangeNotifier {
//   RegisterEmailProvider({String? currentEmail})
//     : _currentEmail = currentEmail ?? "",
//       _isRegisterValid = false;

//   final _emailValidator = EmailValidator();
  
//   String _currentEmail;
//   String? _emailErrorText;
//   bool _isRegisterValid;

//   String get currentEmail => _currentEmail;
//   String? get emailErrorText => _emailErrorText;
//   bool get isRegisterValid => _isRegisterValid;

//   void validateEmail() {
//     if (_currentEmail.isEmpty) {
//       _emailErrorText = null;
//     } else {
//       _emailErrorText = _emailValidator.checkError(_currentEmail)?.reason;
//     }

//     _isRegisterValid = _currentEmail.isNotEmpty
//       && _emailErrorText == null;

//     notifyListeners();
//   }

//   void onEmailChanged(String value) {
//     _currentEmail = value;
//     validateEmail();
//   }
// }