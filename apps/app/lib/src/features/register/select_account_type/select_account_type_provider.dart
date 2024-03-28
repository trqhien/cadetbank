import 'package:flutter/material.dart';

class SelectAccountTypeProvider extends ChangeNotifier {
  SelectAccountTypeProvider({String? currentAccountType})
    : _currentAccountType = currentAccountType;
  
  String? _currentAccountType;

  String? get currentAccountType => _currentAccountType;

  void onTypeSelected(String? value) {
    _currentAccountType = value;
    notifyListeners();
  }
}
