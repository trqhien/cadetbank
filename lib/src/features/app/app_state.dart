import 'package:cadetbank/src/app/shared_data/register_data.dart';
import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  AppState({RegisterData? registerData})
    : _registerData = registerData,
      _debug = false;

  UserDetails? _user;
  UserDetails? get user => _user;
  bool get isUsernameAvailable => user?.username != null;
  
  RegisterData? _registerData;
  RegisterData? get registerData => _registerData;

  bool _debug;
  bool get debug => _debug;

  void toggleDebugMode() {
    _debug = !debug;
    notifyListeners();
  }

  void updateCurrentUser(UserDetails newUser) {
    _user = newUser;
    notifyListeners();
  }

  void logoutUser() {
    _user = null;
    notifyListeners();
  }

  void updateRegisteredEmail(String email) {
    _registerData = _registerData?.updateEmail(email)
      ?? RegisterData(email: email);
    notifyListeners();
  }

  void updateRegisteredPhone(String phone) {
    _registerData = _registerData?.updatePhoneNumber(phone)
      ?? RegisterData(phoneNumber: phone);
    notifyListeners();
  }

  void updateRegisteredAccountType(String type) {
    _registerData = _registerData?.updateAccountType(type)
      ?? RegisterData(accountType: type);
    notifyListeners();
  }

  void resetRegisterData() {
    _registerData = null;
  }
}