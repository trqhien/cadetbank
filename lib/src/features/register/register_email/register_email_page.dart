import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:cadetbank/src/features/register/register_email/register_email_provider.dart';
import 'package:cadetbank/src/features/register/widgets/login_flow_prompt_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterEmailPage extends StatelessWidget {
  const RegisterEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterEmailProvider(
        currentEmail: context.read<RegisterState>().registerData?.email
      )..validateEmail(),
      builder: (context, _) {
        return Scaffold(
          appBar: CadetBankAppBar.empty(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Register Email",
                    style: Theme.of(context).textTheme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    initialValue: context.read<RegisterState>().registerData?.email,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    style: Theme.of(context).textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.w600),
                    onChanged: context.read<RegisterEmailProvider>().onEmailChanged,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "example@maya.ph",
                      errorStyle: const TextStyle(fontSize: 10),
                      errorText: context.watch<RegisterEmailProvider>().emailErrorText
                    ),
                  ),
                  const SizedBox(height: 32),
                  const LogInFlowPromptText(),
                  const Spacer(),
                  Selector<RegisterEmailProvider, bool>(
                    selector: (context, registerEmailProvider) => registerEmailProvider.isRegisterValid,
                    builder: (context, isRegisterValid, _) {
                      return TextButton(
                        onPressed: isRegisterValid
                          ? () {
                            final registerState = context.read<RegisterState>();
                            registerState.updateRegisteredEmail(context.read<RegisterEmailProvider>().currentEmail);
                            Navigator.of(context).pushNamed("/register/account-type");
                          }
                          : null,
                        child: const Text("Next"),
                      );
                    }
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
