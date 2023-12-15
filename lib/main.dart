import 'package:di_containers/di_containers.dart';
import 'package:flutter/material.dart';
import 'package:saving_app/saving_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(
    const App()
  );
}
