import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/features/app/cadet_bank_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Storage.remove(StorageKey.token);
  Storage.remove(StorageKey.refreshRoken);

  runApp(
    const CadetBankApp()
  );
}
