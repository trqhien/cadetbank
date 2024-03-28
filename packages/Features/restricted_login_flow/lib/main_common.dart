import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/infrastructure/core/app/restricted_login_flow_app.dart';
import 'package:injectable/injectable.dart';
import 'package:restricted_login_flow/src/infrastructure/crash_monitoring/crash_monitoring_helper.dart';

import 'src/infrastructure/dependency_injection/dependency_injection.dart';

Future<void> startApp({
  String env = Environment.prod,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  injector.initialize(env);
  final crashMonitoringHelper = injector.get<ICrashMonitoringHelper>();
  await crashMonitoringHelper.initialize();
  runApp(
    const RestrictedLoginFlowApp(),
  );
}
