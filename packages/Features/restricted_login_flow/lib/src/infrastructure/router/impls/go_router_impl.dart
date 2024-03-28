import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restricted_login_flow/src/infrastructure/router/router.dart';
import 'package:restricted_login_flow/src/presentation/screens/main_screen/main_screen.dart';

class GoRouterImpl implements IRouter {
  @override
  void goToRoute({required String path}) {}

  @override
  RouterConfig<Object> initialize() {
    return GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const MainScreen();
          },
        ),
      ],
    );
  }
}
