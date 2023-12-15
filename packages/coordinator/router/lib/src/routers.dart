import 'package:flutter/material.dart';
import 'package:home_feature/home_feature.dart';
import 'package:login_feature/login_feature.dart';
import 'package:profile_feature/presentation/pages/profile_page.dart';
import 'package:username_creation_feature/username_creation_feature.dart';

MaterialPageRoute onGenerateRoute(RouteSettings settings) {
  final routeName = settings.name!;

  if (routeName == "/debug") {
    return MaterialPageRoute(
      builder: (context) => getPage(context: context, routeName: routeName),
      settings: settings,
      fullscreenDialog: true
    );
  } else {
    return MaterialPageRoute(
      builder: (context) => GestureDetector(
        onLongPressUp: () {
          Navigator.of(context).pushNamed('/debug');
        },
        child: getPage(context: context, routeName: routeName)
      ),
      settings: settings,
      fullscreenDialog: routeName == '/register/preview'
        || routeName == '/register/successful'
    );
  }
}

Widget getPage({
  required BuildContext context, 
  required String routeName, 
}) {
  switch (routeName) {
    case '/login':
      return const LoginPage(); 
    case '/register/email':
      return const LoginPage();
    case '/register/account-type':
      return const LoginPage();
    case '/register/password':
      return const LoginPage();
    case '/register/phone':
      return const LoginPage();
    case '/register/preview':
      return const LoginPage();
    case '/register/successful':
      return const LoginPage();
    case '/home':
      return const HomePage();
    case '/profile':
      return const ProfilePage();
    case '/profile/create-username':
      return const UsernameCreationPage();
    case '/debug':
      return const LoginPage();
    default:
      return const LoginPage();
  }
}
