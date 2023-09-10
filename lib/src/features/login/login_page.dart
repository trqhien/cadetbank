// import 'package:cadetbank/src/core/validators/validator_collections/email_validator.dart';
import 'package:cadetbank/src/core/validators/validator_collections/password_validator.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final passwordValidator = PasswordValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                Text(
                  "Log in",
                  style: Theme.of(context).textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                ),
                TextFormField(
                  // controller: _controller,
                  // focusNode: _focusNode,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  style: Theme.of(context).textTheme.titleSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "example@abx.xyz",
                    // errorText: 
                    // prefixText: "prefix",
                    // suffixIcon: Padding(
                    //   padding: const EdgeInsets.only(bottom: 16),
                    //   child: widget.trailingIcon, // ?? _buildErrorIcon(),
                  ),
                ),
                TextFormField(
                  // controller: _controller,
                  // focusNode: _focusNode,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  style: Theme.of(context).textTheme.titleSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                  onChanged: (value) {},
                  validator: (value) {
                    // Ignore validation when user hasn't entered anything
                    if (value == null || value.isEmpty) return null;
                    final error = passwordValidator.checkError(value);
                    return error?.reason;
                  },
                  decoration: const InputDecoration(
                    labelText: "Password",
                    errorStyle: TextStyle(fontSize: 8),
                    // hintText: "example@abx.xyz",
                    // prefixText: "prefix",
                    // suffixIcon: Padding(
                    //   padding: const EdgeInsets.only(bottom: 16),
                    //   child: widget.trailingIcon, // ?? _buildErrorIcon(),
                    ),
                  ),
                InkWell(
                  child: const Text("Don't have and account? Register"),
                  onTap: () {
                    // GoRouter.of(context).pushReplacement("/register");
                    Navigator.of(context).pushReplacementNamed("/register/email");
                  },
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(newRoute);
                    // GoRouter.of(context).pushReplacement("location")  // ("/register"),
                  },
                  child: const Text("Log in"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
