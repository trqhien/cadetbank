import 'package:cadetbank/src/core/shared_preferences.dart/cadetbank_shared_preferences.dart';
import 'package:cadetbank/src/features/login/login_page.dart';
import 'package:cadetbank/src/features/onboarding/onboarding_page.dart';
import 'package:cadetbank/src/features/register/widgets/email_register_page.dart';
import 'package:go_router/go_router.dart';

GoRouter configRouters() => GoRouter(
  routes: [
    GoRoute(
      path: CadetBankRouter.login.path,
      builder: (context, state) => const LoginPage(),
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
      builder: (context, state) => const EmailRegisterPage(),
    ),
  ],
);

enum CadetBankRouter implements Comparable<CadetBankRouter> {
  register(path: "/register", name: "Register"),
  onboarding(path: "/onboarding", name: "Onboarding"),
  login(path: "/", name: "Login");

  const CadetBankRouter({required this.path, this.name});

  final String path;
  final String? name;

  static int compare(CadetBankRouter a, CadetBankRouter b) => a.compareTo(b);

  @override
  int compareTo(CadetBankRouter other) => path.compareTo(other.path);
}
