import 'package:cadetbank/src/app/shared_data/register_data.dart';
import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';

// TODO: 1. Create `AppState`
// snippet:cadetappstate

class AppState extends ChangeNotifier {
  AppState();

  UserDetails? user;

  void updateCurrentUser(UserDetails newUser) {
    user = newUser;
    notifyListeners();
  }

  void logoutUser() {
    user = null;
    notifyListeners();
  }
}

class RegisterState extends ChangeNotifier {
  RegisterState({this.registerData});

  RegisterData? registerData;

  void updateRegisteredEmail(String email) {
    registerData = registerData?.updateEmail(email)
      ?? RegisterData(email: email);
    notifyListeners();
  }

  void updateRegisteredPhone(String phone) {
    registerData = registerData?.updatePhoneNumber(phone)
      ?? RegisterData(phoneNumber: phone);
    notifyListeners();
  }

  void updateRegisteredAccountType(String type) {
    registerData = registerData?.updateAccountType(type)
      ?? RegisterData(accountType: type);
    notifyListeners();
  }

  void resetRegisterData() {
    registerData = null;
  }
}