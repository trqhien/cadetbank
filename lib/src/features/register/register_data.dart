import 'package:flutter/material.dart';

class RegisterData {
  /// Internal, private state of the cart.
  /// 
  
  final ValueNotifier<String?> email;
  final ValueNotifier<String?> accountType;
  final ValueNotifier<String?> phoneNumber;
  final ValueNotifier<String?> password;

  // String? get email => _email;
  RegisterData._({
    required this.email, 
    required this.accountType, 
    required this.phoneNumber, 
    required this.password
  });

  factory RegisterData.initial() => RegisterData._(
    email: ValueNotifier<String?>(null),
    accountType: ValueNotifier<String?>(null),
    phoneNumber: ValueNotifier<String?>(null),
    password: ValueNotifier<String?>(null),
  );

  void updateEmail(String _email) {
    email.value = _email;
    // notifyListeners();
  }

  void updateAccountType(String _accountType) {
    accountType.value = _accountType;
    // notifyListeners();
  }

   void updatePhoneNumber(String _phoneNumber) {
    phoneNumber.value = _phoneNumber;
    // notifyListeners();
  }

   void updatePassword(String _password) {
    password.value = _password;
    // notifyListeners();
  }

  /// Removes all items from the cart.
  void reset() {
    email.value = null;
    accountType.value = null;
    phoneNumber.value = null;
    password.value = null;
    // notifyListeners();
  }
}