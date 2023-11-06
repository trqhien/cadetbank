import 'package:cadetbank/src/core/router/routers.dart';
import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/core/themes/maya_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Storage.remove(StorageKey.token);
  Storage.remove(StorageKey.refreshRoken);

  runApp(
    MaterialApp(
      theme: CustomTheme.maya(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => onGenerateRoute(settings),
      initialRoute: "/red",
    )
  );
}
