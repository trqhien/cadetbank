import 'package:cadetbank/src/core/validators/validator_collections/password_validator.dart';
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
  bool _isPasswordValid = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Column(
            children: [
              Text(
                "Create password",
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
                    (route) => route.settings.name == "/register/email")
                  ;
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: _isPasswordValid
                  ? () {
                      // do something here
                    }
                  : null,
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
