import 'package:cadetbank/src/core/network/dio_helper.dart';
import 'package:cadetbank/src/features/app/cadet_bank_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.shared.createInstance();
  runApp(const CadetBankApp());
}
