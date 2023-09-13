import 'package:cadetbank/src/core/network/dio_helper.dart';
import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/login_response.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final dio = DioHelper.shared.dio!;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _error;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final loggedInUser = LoggedInUserDataInherited.of(context)!.userDetails;

    return LoadingOverlay(
      isLoading: _isLoading,
      child: Scaffold(
        appBar: CadetBankAppBar.empty(),
        body: KeyboardDismissOnTap(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(48),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Log in",
                      style: Theme.of(context).textTheme.displayMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      style: Theme.of(context).textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                      decoration: const InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      autocorrect: false,
                      style: Theme.of(context).textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                      decoration: const InputDecoration(
                        labelText: "Password",
                        errorStyle: TextStyle(fontSize: 8),
                        hintText: "Enter your password",
                      ),
                    ),
                    const SizedBox(height: 16),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium!,
                        children: [
                          const TextSpan(text:"Don't have and account? "),
                          TextSpan(
                            text:"Register now",
                            style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: CustomColors.primaryGreenColor,
                                fontWeight: FontWeight.w600
                              ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushReplacementNamed("/register/email");
                              }
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () async {
                        // Dismiss keyboard
                        FocusScope.of(context).unfocus();

                        // Call log in API
                        final res = await login(email: _emailController.text, password: _passwordController.text);

                        if (res != null) {
                          // Update http request headers with access token
                          DioHelper.shared.updateAuthorizationToken(res.token);

                          // update current user
                          loggedInUser.value = res.user;

                          // Push to home screen
                          Navigator.of(context).pushReplacementNamed("/home");
                        }
                      },
                      child: const Text("Log in"),
                    ),
                    if (_error != null)
                      Text(_error!)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<LoginReponse?> login({
    required String email,
    required String password
  }) async {
    setState(() {
      _error = null;
      _isLoading = true;
    });

    LoginReponse? loginReponse;

    try {
      final response = await dio.post<Map<String, dynamic>>(
        "/auth/login",
        data: {
          "email": email,
          "password": password,
        }
      );

      final registerData = ApiResponse.fromJson(response.data!, LoginReponse.fromJson);

      if (registerData.isSuccessful) {
        loginReponse = registerData.response!;
      } else {
        _error = registerData.error!.reason;
      }
    } catch (err) {
      _error = err.toString();
    }

    _isLoading = false;

    setState(() {});
    return loginReponse;
  }
}
