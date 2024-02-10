import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
// import 'package:cadetbank/src/features/app/cadet_bank_app.dart' as use_provider;
import 'package:cadetbank/src/features/app/cadet_bank_app_inherited.dart'; // as use_inherited;
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Storage.remove(StorageKey.token);
  Storage.remove(StorageKey.refreshRoken);

  runApp(
    const CadetBankApp()
  );
}
