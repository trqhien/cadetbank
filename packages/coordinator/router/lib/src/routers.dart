import 'package:flutter/material.dart';
import 'package:home_feature/home_feature.dart';
import 'package:login_feature/login_feature.dart';
import 'package:paymaya_dev_login/paymaya_dev_login.dart';
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
    case "devLoginScreen":
      return const DevLoginScreen(
          initialMIN: DevConstants.devLoginInitialMin,
          initialPassword: DevConstants.devLoginInitialPassword,
          initialAccessToken: DevConstants.devLoginInitialAccessToken,
          baseURL: String.fromEnvironment(JsonKeys.environmentVarBaseUrl),
          packageName: DevConstants.examplePackageName,
        );
    default:
      return const LoginPage();
  }
}

class DevConstants {
  DevConstants._();
  static const devLoginInitialMin = '639997777021';
  static const devLoginInitialPassword = 'testpassword123';
  static const devLoginInitialAccessToken =
      'eyJraWQiOiJyc2ExIiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJ1c2VybmFtZS0xIiwiYXpwIjoidXNlcm5hbWUtMSIsInNjb3BlIjoib3Blbl9wbGF0Zm9ybV90b2tlbi53cml0ZSBpbnRlcm5hbCIsImlzcyI6Imh0dHBzOlwvXC9jb25uZWN0LXNiLWlzc3VpbmcucGF5bWF5YS5jb20iLCJleHAiOjM3OTQ5ODc5NDEsImlhdCI6MTY1MDUzOTk0MSwianRpIjoiMGQzYWVkYmQtMDhkZS00ZGIxLWFkNmYtNmVhZjg5NWY2MWE5In0.M16ixEbdCyDoNeuIZ3nuciu39rp5vrFO9-2X_zvuXDDXD9fWdC-N7OscMKzG0i8XcQHXFWeByqwf6I6Z4AewtdCMD9ZOL3UNUlTvV_Ngmn1Vtks6rsJ8UQHfzGLaSDU-W9ADi6sgWEf7mZ7n1iAAgVVYYRvSLtS3Qjh-Uj7dyYB4aCU-MQwto3bTcbCHoI4cN0-HsDeb4dAOZgJsCboJ2wtCsZnRfcODaGd-pUwPtbyTbJAocfMIFjFHQxZh_lHkHdfWUBclPUPl79yvH-dzImiuq5r4je-WGroumBRR2MFsQ4-3hrZeNiu99aAny7HeT_ZZvd8bQ3bNX1pJqStX1g';
  static const sessionTokenKey = 'sessionToken';
  static const accessTokenKey = 'accessToken';
  static const examplePackageName = 'packages/rlf_demo';
}

class JsonKeys {
  const JsonKeys._();

  static const environmentVarBaseUrl = 'csBaseUrl';
  static const spkiPins = 'spkiPins';
  static const code = 'code';
  static const error = 'error';
  static const reason = 'reason';
  static const status = 'status';

    static const currentBalance = 'current_balance';
  static const availableBalance = 'available_balance';

}
