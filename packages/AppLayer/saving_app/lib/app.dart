import 'package:coreui/coreui.dart';
import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:router/router.dart';
import 'package:shared_states/shared_states.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticatedUserBloc>(create: (_) => resolve())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Styles.lightModeTheme,
        themeMode: ThemeMode.light,
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}
