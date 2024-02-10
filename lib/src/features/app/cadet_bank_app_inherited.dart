import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
import 'package:cadetbank/src/core/router/routers.dart';
import 'package:cadetbank/src/core/themes/maya_theme.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:flutter/material.dart';

class CadetBankApp extends StatelessWidget {
  const CadetBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    const stateManagement = StateManagement.inherited;

    // TODO: 2. Wrap MaterialApp inside LoggedInUserDataInherited

    return LoggedInUserDataInherited(
      userDetails: ValueNotifier(null),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => onGenerateRoute(settings, stateManagement: stateManagement),
        initialRoute: "/login",
        theme: CustomTheme.maya(),
      ),
    );
  }
}