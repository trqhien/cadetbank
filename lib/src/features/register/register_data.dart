import 'package:flutter/material.dart';

class RegisterData {
  final ValueNotifier<String?> email;
  final ValueNotifier<String?> accountType;
  final ValueNotifier<String?> phoneNumber;
  

  RegisterData._({
    required this.email, 
    required this.accountType, 
    required this.phoneNumber, 
  });

  factory RegisterData.initial() => RegisterData._(
    email: ValueNotifier<String?>(null),
    accountType: ValueNotifier<String?>(null),
    phoneNumber: ValueNotifier<String?>(null),
  );

  void updateEmail(String _email) {
    email.value = _email;
  }

  void updateAccountType(String _accountType) {
    accountType.value = _accountType;
  }

  void updatePhoneNumber(String _phoneNumber) {
    phoneNumber.value = _phoneNumber;
  }

  /// Removes all items from the cart.
  void reset() {
    email.value = null;
    accountType.value = null;
    phoneNumber.value = null;
    // password.value = null;
    // notifyListeners();
  }
}