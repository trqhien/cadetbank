import 'package:cadetbank/src/core/shared_preferences.dart/cadetbank_shared_preferences.dart';
import 'package:cadetbank/src/features/home/home_page.dart';
import 'package:cadetbank/src/features/login/login_page.dart';
import 'package:cadetbank/src/features/onboarding/onboarding_page.dart';
import 'package:cadetbank/src/features/profile/create_username_page.dart';
import 'package:cadetbank/src/features/profile/profile_page.dart';
import 'package:cadetbank/src/features/register/register_email_page.dart';
import 'package:cadetbank/src/features/register/register_password_page.dart';
import 'package:cadetbank/src/features/register/register_phone_page.dart';
import 'package:cadetbank/src/features/register/register_preview_page.dart';
import 'package:cadetbank/src/features/register/select_account_type_page.dart';
import 'package:cadetbank/src/features/register/successful_register_confirmation_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter configRouters() => GoRouter(
  routes: [
    GoRoute(
      path: CadetBankRouter.login.path,
      builder: (context, state) => LoginPage(),
      redirect: (_, __) async {
        final isOnboarded = await CadetBankSharedPreference.getBool(SharedPreferenceKey.isOnboarded) ?? false;
        
        if (!isOnboarded) {
          return CadetBankRouter.onboarding.path;
        } else {
          return null;
        }  
      },
    ),
    GoRoute(
      path: CadetBankRouter.onboarding.path,
      builder: (context, state) => const OnboardingPage(title: "Maya"),
    ),
    GoRoute(
      path: CadetBankRouter.register.path,
      // builder: (context, state) => const EmailRegisterPage(),
      builder: (context, state) => const RegisterEmailPage(),
    ),
  ],
);

enum CadetBankRouter implements Comparable<CadetBankRouter> {
  register(path: "/register", name: "Register"),
  onboarding(path: "/onboarding", name: "Onboarding"),
  login(path: "/login", name: "Login");

  const CadetBankRouter({required this.path, this.name});

  final String path;
  final String? name;

  static int compare(CadetBankRouter a, CadetBankRouter b) => a.compareTo(b);

  @override
  int compareTo(CadetBankRouter other) => path.compareTo(other.path);
}

MaterialPageRoute onGenerateRoute(RouteSettings settings) {
  final routeName = settings.name!;

  switch (routeName) {
    case '/login':
      return MaterialPageRoute(
        builder: (context) => LoginPage(),
        settings: settings
      );
    case '/register/email':
      return MaterialPageRoute(
        builder: (context) => const RegisterEmailPage(),
        settings: settings
      );
    case '/register/account-type':
      return MaterialPageRoute(
        builder: (context) => const SelectAccountTypePage(),
        settings: settings
      );
    case '/register/password':
      return MaterialPageRoute(
        builder: (context) => const RegisterPasswordPage(),
        settings: settings
      );
    case '/register/phone':
      return MaterialPageRoute(
        builder: (context) => const RegisterPhonePage(),
        settings: settings
      );
    case '/register/preview':
      return MaterialPageRoute(
        builder: (context) => const RegisterPreviewPage(),
        fullscreenDialog: true,
        settings: settings
      );
    case '/register/successful':
      return MaterialPageRoute(
        builder: (context) => const SuccessfulRegisterConfirmationPage(),
        fullscreenDialog: true,
        settings: settings
      );
    case '/home':
      return MaterialPageRoute(
        builder: (context) => HomePage(),
        settings: settings
      );
    case '/profile':
      return MaterialPageRoute(
        builder: (context) => const ProfilePage(),
        settings: settings
      );
    case '/profile/create-username':
      return MaterialPageRoute(
        builder: (context) => const CreateUsernamePage(),
        settings: settings
      );
    default:
      return MaterialPageRoute(
        builder: (context) => LoginPage(),
        settings: settings
      );
  }
}
