import 'package:flutter/material.dart';

class RegisterData {
  final ValueNotifier<String?> email;
  final ValueNotifier<String?> accountType;
  final ValueNotifier<String?> phoneNumber;
  final ValueNotifier<String?> password;
  final ValueNotifier<String?> confirmPassword;
  
  RegisterData._({
    required this.email, 
    required this.accountType, 
    required this.phoneNumber, 
    required this.password,
    required this.confirmPassword,
  });

  factory RegisterData.initial() => RegisterData._(
    email: ValueNotifier<String?>(null),
    accountType: ValueNotifier<String?>(null),
    phoneNumber: ValueNotifier<String?>(null),
    password: ValueNotifier<String?>(null),
    confirmPassword: ValueNotifier<String?>(null),    
  );

  factory RegisterData.mock() => RegisterData._(
    email: ValueNotifier<String?>("hi.en@ma.ya"), 
    accountType: ValueNotifier<String?>("personal"), 
    phoneNumber: ValueNotifier<String?>("764846492"), 
    password: ValueNotifier<String?>("Qwerty@123"),
    confirmPassword: ValueNotifier<String?>("Qwerty@123"),
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
    password.value = null;
    confirmPassword.value = null;
  }
}