import 'package:di_containers/di_containers.dart';
import 'package:flutter/material.dart';
import 'package:mayabank_module/mayabank_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(
    const App()
  );
}