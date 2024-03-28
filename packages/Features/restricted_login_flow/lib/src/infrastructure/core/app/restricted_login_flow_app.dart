import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/dependency_injection.dart';
import 'package:restricted_login_flow/src/infrastructure/router/router.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

class RestrictedLoginFlowApp extends StatelessWidget {
  const RestrictedLoginFlowApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: Styles.lightModeTheme,
      themeMode: ThemeMode.light,
      routerConfig: injector.get<IRouter>().initialize(),
    );
  }
}
