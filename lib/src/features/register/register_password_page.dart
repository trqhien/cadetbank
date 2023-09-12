import 'package:cadetbank/src/core/network/dio_helper.dart';
import 'package:cadetbank/src/core/validators/validator_collections/password_validator.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data_provider.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/login_response.dart';
import 'package:flutter/material.dart';

class RegisterPasswordPage extends StatefulWidget {
  const RegisterPasswordPage({super.key});

  @override
  State<RegisterPasswordPage> createState() => _RegisterPasswordPageState();
}

class _RegisterPasswordPageState extends State<RegisterPasswordPage> {
  final _passwordValidator = PasswordValidator();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _passwordErrorText;
  String? _confirmPasswordlErrorText;
  String? _registerError;
  bool _isPasswordValid = false;

  final dio = DioHelper.shared.dio!;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final registerDataProvider = RegisterDataProvider.of(context)!;
    final isDebug = registerDataProvider.debug;
    final registerData = registerDataProvider.registerData;

    _passwordController.text = registerDataProvider.registerMock?.password ?? "";
    _confirmPasswordController.text = registerDataProvider.registerMock?.password ?? "";

    validateRegister(password: _passwordController.text, confirmPassword: _confirmPasswordController.text);

    return LoadingOverlay(
      isLoading: isLoading,
      child: Scaffold(
        appBar: CadetBankAppBar.pushStyle(
          actions: [
            IconButton(
              icon: Image.asset(
                "assets/icons/Bills-2.png",
                width: 18,
                height: 18,
                fit: BoxFit.cover,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pushNamed("/register/preview");
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Text(
                  "Create your password",
                  style: Theme.of(context).textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  style: Theme.of(context).textTheme.titleSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                  onChanged: (value) {
                    validateRegister(password: value, confirmPassword: _confirmPasswordController.text);
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    errorStyle: const TextStyle(fontSize: 10),
                    errorText: _passwordErrorText
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _confirmPasswordController,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  style: Theme.of(context).textTheme.titleSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                  onChanged: (value) {
                    validateRegister(password: _passwordController.text, confirmPassword: value);
                  },
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    errorStyle: const TextStyle(fontSize: 10),
                    errorText: _confirmPasswordlErrorText
                  ),
                ),
                const SizedBox(height: 32),
                InkWell(
                  child: const Text("Already have an account? Log in"),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      "/login", 
                      (route) => route.settings.name == "/register/email"
                    );
                  },
                ),
                const Spacer(),
                Visibility(
                  visible: _registerError != null,
                  child: Text(_registerError?? "")
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: _isPasswordValid || isDebug
                    ? () async {
                        final res = await register(
                          email: registerData.email.value ?? "",
                          password: _passwordController.text,
                          accountType: registerData.accountType.value ?? "",
                          phone: registerData.phoneNumber.value ?? ""
                        );

                        if (res != null)  {
                          registerData.reset();
                          Navigator.of(context).pushNamed("/register/successful");
                        }
                      }
                    : null,
                  child: const Text("Done"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<LoginReponse?> register({
    required String email,
    required String password,
    required String accountType,
    required String phone,
    // VoidCallback? completionHandler
  }) async {
    setState(() {
      _registerError = null;
      isLoading = true;
    });

    LoginReponse? loginReponse;

    try {
      final response = await dio.get<Map<String, dynamic>>(
        "/users/register",
        data: {
          "email": email,
          "password": password,
          "accountType": accountType,
          "phone": "+84$phone"
        }
      );

      final registerData = ApiResponse.fromJson(response.data!, LoginReponse.fromJson);

      if (registerData.isSuccessful) {
        loginReponse = registerData.response!;
      } else {
        _registerError = registerData.error!.reason;
      }
    } catch (err) {
      _registerError = err.toString();
    }

    isLoading = false;

    setState(() {});
    return loginReponse;
    // use stream instead
  }

  void validateRegister({required String password, required String confirmPassword}) {
    if (password.isEmpty) {
      _passwordErrorText = null;
    } else {
      _passwordErrorText = validatePassword(password);
    }

    if (confirmPassword.isEmpty) {
      _confirmPasswordlErrorText = null;
    } else {
      _confirmPasswordlErrorText = validatePassword(confirmPassword);
    }

    if (_passwordErrorText == null && _confirmPasswordlErrorText == null && confirmPassword.isNotEmpty) {
      _confirmPasswordlErrorText = validatePasswordMissmatched(password, confirmPassword);
    }

    _isPasswordValid = password.isNotEmpty
      && confirmPassword.isNotEmpty
      && _passwordErrorText == null 
      && _confirmPasswordlErrorText == null;

    setState(() {});
  }

  String? validatePassword(String password) {
    final error = _passwordValidator.checkError(password);
    return error?.reason;
  }

  String? validatePasswordMissmatched(String password, String confirmPassword) {
    return password == confirmPassword
      ? null
      : "Password mismatched";
  }
}
