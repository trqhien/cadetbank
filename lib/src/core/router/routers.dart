import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
import 'package:cadetbank/src/features/debug/debug_page.dart';
import 'package:cadetbank/src/features/home/home_page.dart' as home;
import 'package:cadetbank/src/features/home/home_page_inherited.dart' as home_inherited;
import 'package:cadetbank/src/features/login/login_page.dart' as log_in;
import 'package:cadetbank/src/features/login/login_page_inherited.dart' as log_in_inherited;
// import 'package:cadetbank/src/features/onboarding/onboarding_page.dart';
import 'package:cadetbank/src/features/profile/create_username_page.dart' as create_username;
import 'package:cadetbank/src/features/profile/create_username_page_inherited.dart' as create_username_inherited;
import 'package:cadetbank/src/features/profile/profile_page.dart' as profile;
import 'package:cadetbank/src/features/profile/profile_page_inherited.dart' as profile_inherited;
import 'package:cadetbank/src/features/register/register_email/register_email_page.dart' as register_email;
import 'package:cadetbank/src/features/register/register_email/register_email_page_inherited.dart' as register_email_inherited;
import 'package:cadetbank/src/features/register/register_password/register_password_page.dart' as register_password;
import 'package:cadetbank/src/features/register/register_password/register_password_page_inherited.dart' as register_password_inherited;
import 'package:cadetbank/src/features/register/register_phone/register_phone_page.dart' as register_phone;
import 'package:cadetbank/src/features/register/register_phone/register_phone_page_inherited.dart' as register_phone_inherited;
import 'package:cadetbank/src/features/register/register_preview/register_preview_page.dart' as register_preview;
import 'package:cadetbank/src/features/register/register_preview/register_preview_page_inherited.dart' as register_preview_inherited;
import 'package:cadetbank/src/features/register/select_account_type/select_account_type_page.dart' as select_account_type;
import 'package:cadetbank/src/features/register/select_account_type/select_account_type_page_inherited.dart' as select_account_type_inherited;
import 'package:cadetbank/src/features/register/successful_register_confirmation_page.dart';
import 'package:flutter/material.dart';

MaterialPageRoute onGenerateRoute(
  RouteSettings settings, 
  {required StateManagement stateManagement}
) {
  final routeName = settings.name!;

  if (routeName == "/debug") {
    return MaterialPageRoute(
      builder: (context) => getPage(context: context, routeName: routeName, stateManagement: stateManagement),
      settings: settings,
      fullscreenDialog: true
    );
  } else {
    return MaterialPageRoute(
      builder: (context) => GestureDetector(
        onLongPressUp: () {
          Navigator.of(context).pushNamed('/debug');
        },
        child: getPage(context: context, routeName: routeName, stateManagement: stateManagement)
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
  required StateManagement stateManagement
}) {
  switch (routeName) {
    case '/login':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const log_in_inherited.LoginPage();
        case StateManagement.provider:
          return const log_in.LoginPage();
      } 
    case '/register/email':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const register_email_inherited.RegisterEmailPage();
        case StateManagement.provider:
          return const register_email.RegisterEmailPage();
      }
    case '/register/account-type':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const select_account_type_inherited.SelectAccountTypePage();
        case StateManagement.provider:
          return const select_account_type.SelectAccountTypePage();
      }
    case '/register/password':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const register_password_inherited.RegisterPasswordPage();
        case StateManagement.provider:
          return const register_password.RegisterPasswordPage();
      }
    case '/register/phone':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const register_phone_inherited.RegisterPhonePage();
        case StateManagement.provider:
          return const register_phone.RegisterPhonePage();
      }
    case '/register/preview':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const register_preview_inherited.RegisterPreviewPage();
        case StateManagement.provider:
          return const register_preview.RegisterPreviewPage();
      }
    case '/register/successful':
      return const SuccessfulRegisterConfirmationPage();
    case '/home':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const home_inherited.HomePage();
        case StateManagement.provider:
          return const home.HomePage();
      }
    case '/profile':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const profile_inherited.ProfilePage();
        case StateManagement.provider:
          return const profile.ProfilePage();
      }
    case '/profile/create-username':
      switch (stateManagement) {
        case StateManagement.inherited:
          return const create_username_inherited.CreateUsernamePage();
        case StateManagement.provider:
          return const create_username.CreateUsernamePage();
      } 
    case '/debug':
      return const DebugPage();
    default:
      switch (stateManagement) {
        case StateManagement.inherited:
          return const log_in_inherited.LoginPage();
        case StateManagement.provider:
          return const log_in.LoginPage();
      } 
  }
}

// GoRouter configRouters() => GoRouter(
//   routes: [
//     GoRoute(
//       path: CadetBankRouter.login.path,
//       builder: (context, state) => LoginPage(),
//       redirect: (_, __) async {
//         final isOnboarded = await CadetBankSharedPreference.getBool(SharedPreferenceKey.isOnboarded) ?? false;
        
//         if (!isOnboarded) {
//           return CadetBankRouter.onboarding.path;
//         } else {
//           return null;
//         }  
//       },
//     ),
//     GoRoute(
//       path: CadetBankRouter.onboarding.path,
//       builder: (context, state) => const OnboardingPage(title: "Maya"),
//     ),
//     GoRoute(
//       path: CadetBankRouter.register.path,
//       // builder: (context, state) => const EmailRegisterPage(),
//       builder: (context, state) => const RegisterEmailPage(),
//     ),
//   ],
// );

// enum CadetBankRouter implements Comparable<CadetBankRouter> {
//   register(path: "/register", name: "Register"),
//   onboarding(path: "/onboarding", name: "Onboarding"),
//   login(path: "/login", name: "Login");

//   const CadetBankRouter({required this.path, this.name});

//   final String path;
//   final String? name;

//   static int compare(CadetBankRouter a, CadetBankRouter b) => a.compareTo(b);

//   @override
//   int compareTo(CadetBankRouter other) => path.compareTo(other.path);
// }
