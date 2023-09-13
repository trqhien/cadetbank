import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
import 'package:cadetbank/src/core/network/dio_helper.dart';
import 'package:cadetbank/src/features/app/cadet_bank_app.dart' as use_provider;
import 'package:cadetbank/src/features/app/cadet_bank_app_inherited.dart' as use_inherited;
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.shared.createInstance();

  runApp(
    const DemoApp(
      stateManagement: StateManagement.inherited
    )
  );
}

class DemoApp extends StatelessWidget {
  final StateManagement stateManagement;

  const DemoApp({
    super.key,
    required this.stateManagement
  });

  @override
  Widget build(BuildContext context) {
    return DemoTopicInherited(
      stateManagement: stateManagement,
      child: stateManagement == StateManagement.inherited
        ? const use_inherited.CadetBankApp()
        : stateManagement == StateManagement.provider 
          ? const use_provider.CadetBankApp()
          : const use_provider.CadetBankApp()
    );
  }
}
