import 'package:cadetbank/src/app/shared_data/register_data.dart';
import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  AppState();

  // UserDetails? _user;
  // UserDetails? get user => _user;
  UserDetails? user;
  // bool get isUsernameAvailable => user?.username != null;
  
  // RegisterData? _registerData;
  // RegisterData? get registerData => _registerData;

  // void toggleDebugMode() {
    // _debug = !debug;
    // notifyListeners();
  // }

  void updateCurrentUser(UserDetails newUser) {
    user = newUser;
    notifyListeners();
  }

  void logoutUser() {
    // _user = null;
    // notifyListeners();
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