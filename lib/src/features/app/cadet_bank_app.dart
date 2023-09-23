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
    final stateManagement = DemoTopicInherited.of(context)!.stateManagement;

    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (settings) => onGenerateRoute(settings, stateManagement: stateManagement),
        // routerConfig: configRouters(),
        theme: CustomTheme.maya(),
      ),
    );
  }
}


// enum Bar<T extends Object> {
//   number<int>(42),
//   name<String>('creativecreatorormaybenot'),
//   baz(true); // Note that type inference also works.

//   const Bar(this.value);
//   final T value;
// }

// enum DemoTopic<T extends dynamic> {
//   stateManagement<StateManagement>(StateManagement.inherited),
//   // provider,
//   baz(true);

//   const DemoTopic(this.value);
//   final T value;
// }

// enum StateManagement {
//   inherited,
//   provider,
//   bloc,
// }

// final topic = DemoTopic.stateManagement;
// const stateManagement = StateManagement.inherited;


// Excercise
// Check if email has been registered on the fly when register email
// Check if phone has been registered on the fly when register phone
// Check if user has been register before sending
