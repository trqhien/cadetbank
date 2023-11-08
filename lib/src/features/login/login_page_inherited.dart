// ignore_for_file: avoid_print, unused_import

import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/login_response.dart';
import 'package:cadetbank/src/network/dio_client.dart';
import 'package:cadetbank/src/network/error_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _response;
  bool _isLoading = false;

  /* 👉 Setup dio instance */
  Dio get dio {
    final _dio = Dio(
      BaseOptions(
        baseUrl: "http://localhost:80/api",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      )
    );
    _dio.interceptors.add(DioPrinter());
    return _dio;
  }


  @override
  Widget build(BuildContext context) {
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

                        /* 👉 Call API here */
                        print("---- start calling API ----");

                        /* 👉 ---- /test/health ---- */
                        // await dio.get("/test/health");

                        /* 👉 ---- /test/greet ---- */
                        // await dio.post(
                        //   "/test/greet",
                        //   data: {"message": "Welcome to 2023 Cadetship Program"}
                        // );

                        /* 👉 ---- /test/404 ---- */
                        // try {
                        //   await dio.get("/test/404");
                        // } catch (err) {}

                        /* 👉 ---- /test/500 ---- */
                        // try {
                        //   await dio.get("/test/500");
                        // } catch (err) {}

                        /* 👉 ---- /auth/login ---- */
                        await login(email: _emailController.text, password: _passwordController.text);

                        print("---- done calling API ----");
                      },
                      child: const Text("Log in"),
                    ),
                    if (_response != null)
                      Text(_response!)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future login({
    required String email,
    required String password
  }) async {
    setState(() {
      _response = null;
      _isLoading = true;
    });

    /* 👉 ---- API request handling starts here ---- */

    try {
      final response = await dio.post<Map<String, dynamic>>(
        "/auth/login",
        data: {
          "email": email,
          "password": password
        }
      );
      // print("🌮 $response");
      final apiResponse = ApiResponse.fromJson(response.data!, LoginReponse.fromJson);

      if (apiResponse.response != null) {
        _response = "🌮username: ${apiResponse.response!.user.username} \n email: ${apiResponse.response!.user.email} \n phone: ${apiResponse.response!.user.phone}";
      } else {
        _response = apiResponse.error!.reason;
      }
    } catch (err) {
      print("❌ $err");
      _response = err.toString();
    }

    /* 👉 ---- END ---- */

    _isLoading = false;
    setState(() {});
  }
}

class DioPrinter extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("🟣 $response");
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print("🔴 $err");
    handler.next(err);
  }
}


