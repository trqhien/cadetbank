import 'package:cadetbank/src/core/validators/validator_collections/email_validator.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data_inherited.dart';
import 'package:cadetbank/src/features/register/widgets/login_flow_prompt_text.dart';
import 'package:flutter/material.dart';

class RegisterEmailPage extends StatefulWidget {
  const RegisterEmailPage({super.key});

  @override
  State<RegisterEmailPage> createState() => _RegisterEmailPageState();
}

class _RegisterEmailPageState extends State<RegisterEmailPage> {
  final _emailValidator = EmailValidator();
  TextEditingController? _emailController;

  String? _emailErrorText;
  bool _isRegisterValid = false;

  void validateEmail(String email) {
    if (email.isEmpty) {
      _emailErrorText = null;
    } else {
      _emailErrorText = _emailValidator.checkError(email)?.reason;
    }

    _isRegisterValid = email.isNotEmpty
      && _emailErrorText == null;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final registerDataProvider = RegisterDataInherited.of(context)!;
    final registerData = registerDataProvider.registerData;
    _emailController ??= TextEditingController(text: registerData.email.value);
    validateEmail(_emailController!.text);
    
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
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                style: Theme.of(context).textTheme.titleSmall!
                  .copyWith(fontWeight: FontWeight.w600),
                onChanged: validateEmail,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "example@maya.ph",
                  errorStyle: const TextStyle(fontSize: 10),
                  errorText: _emailErrorText
                ),
              ),
              const SizedBox(height: 32),
              const LogInFlowPromptText(),
              const Spacer(),
              TextButton(
                onPressed: _isRegisterValid || registerDataProvider.debug
                  ? () {
                    if (!registerDataProvider.debug) {
                      registerData.updateEmail(_emailController!.text);
                    }
                    Navigator.of(context).pushNamed("/register/account-type");
                  }
                  : null,
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
