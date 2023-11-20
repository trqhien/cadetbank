import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
import 'package:cadetbank/src/app/shared_data/register_data_inherited.dart';
import 'package:cadetbank/src/core/router/routers.dart';
import 'package:cadetbank/src/core/themes/maya_theme.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data_inherited.dart';
import 'package:flutter/material.dart';

class CadetBankApp extends StatelessWidget {
  const CadetBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    final stateManagement = DemoTopicInherited.of(context)!.stateManagement;

    // Wrap MaterialApp inside LoggedInUserDataInherited
    // snippet:cadetinwrap
    // snippet:cadetinwrapf

    return LoggedInUserDataInherited(
      userDetails: ValueNotifier(null),
      child: RegisterDataInherited(
        registerData: RegisterData.initial(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) => onGenerateRoute(settings, stateManagement: stateManagement),
          initialRoute: "/login",
          theme: CustomTheme.maya(),
        ),
      ),
    );
  }
}