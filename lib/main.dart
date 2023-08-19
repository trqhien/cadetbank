import 'package:cadetbank/src/core/shared_preferences.dart/cadetbank_shared_preferences.dart';
import 'package:cadetbank/src/features/app/cadet_bank_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final isOnboarded = await CadetBankSharedPreference.getBool(SharedPreferenceKey.isOnboarded) ?? false;
  print("✅ ${isOnboarded}");

  runApp(const CadetBankApp());
}
