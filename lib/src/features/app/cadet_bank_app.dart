import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
import 'package:cadetbank/src/core/router/routers.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cadetbank/src/core/themes/maya_theme.dart';

class CadetBankApp extends StatelessWidget {
  const CadetBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    const stateManagement = StateManagement.provider;

    // TODO: 2. Wrap root widget inside `MultiProvider`
    // snippet:cadetmultiprovider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
        ChangeNotifierProvider(create: (_) => RegisterState())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => onGenerateRoute(settings, stateManagement: stateManagement),
        theme: CustomTheme.maya(),
      ),
    );
  }
}
