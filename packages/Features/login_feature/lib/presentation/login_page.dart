import 'package:coreui/coreui.dart';
import 'package:di/di.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:login_feature/presentation/bloc/login_bloc.dart';
import 'package:shared_states/shared_states.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(resolve(), resolve()),
      child: BlocConsumer<LoginBloc, LoginState>(
        listenWhen: (previous, current) => previous.result != current.result,
        listener: (context, state) {
          state.result?.maybeWhen(
            success:(userDetails) {
              context.read<AuthenticatedUserBloc>().add(AuthenticatedUserEvent.userAuthenticated(userDetails));
              Navigator.of(context).pushReplacementNamed("/home");
            },
            orElse: () {}
          );
        },
        builder: (context, state) {
          return LoadingOverlay(
              isLoading: state.isLoading,
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
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                              onChanged: (email) => context.read<LoginBloc>().add(EmailChanged(email)),
                              decoration: const InputDecoration(
                                labelText: "Email",
                                hintText: "Enter your email",
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              autocorrect: false,
                              style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                              onChanged: (password) => context.read<LoginBloc>().add(PasswordChanged(password)),
                              decoration: const InputDecoration(
                                labelText: "Password",
                                hintText: "Enter your password",
                              ),
                            ),
                            const SizedBox(height: 16),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium!,
                                children: [
                                  const TextSpan(text:"Don't have an account? "),
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
                              onPressed: state.isValid
                                ? () async {
                                    // Dismiss keyboard
                                    FocusScope.of(context).unfocus();
      
                                    // Call log in API
                                    context
                                      .read<LoginBloc>()
                                      .add(const LoginFormSubmitted());
                                  }
                                : null,
                              child: const Text("Log in"),
                            ),

                            if (state.result != null)
                              Text(
                                state.result!.when(
                                  success: (_) => "", 
                                  faillure: (reason) => reason
                                )
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          );
        },
      )
    );
  }
}
