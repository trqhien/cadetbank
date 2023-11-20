import 'package:cadetbank/src/core/validators/validator_collections/mobile_phone_validator.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data_inherited.dart';
import 'package:cadetbank/src/features/register/widgets/login_flow_prompt_text.dart';
import 'package:flutter/material.dart';

class RegisterPhonePage extends StatefulWidget {
  const RegisterPhonePage({super.key});

  @override
  State<RegisterPhonePage> createState() => _RegisterPhonePageState();
}

class _RegisterPhonePageState extends State<RegisterPhonePage> {
  final _phoneValidator = MobilePhoneValidator();
  TextEditingController? _phoneController;

  String? _errorText;
  bool _isRegisterValid = false;

  void validatePhone(String phone) {
    if (phone.isEmpty) {
      _errorText = null;
    } else {
      _errorText = _phoneValidator.checkError(phone)?.reason;
    }

    _isRegisterValid = phone.isNotEmpty
      && _errorText == null;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final registerDataProvider = RegisterDataInherited.of(context)!;
    final registerData = registerDataProvider.registerData;
    _phoneController ??= TextEditingController(text: registerData.phoneNumber.value);
    validatePhone(_phoneController!.text);

    return Scaffold(
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Verify your phone number with a code",
                style: Theme.of(context).textTheme.headlineSmall!
                  .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              const Text("We'll send you a code - it helps us keep your account secure."),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntrinsicWidth(
                    child: TextFormField(
                      initialValue: "🇵🇭 +84",
                      style: Theme.of(context).textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                      readOnly: true,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      )
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.number,
                      autocorrect: false,
                      style: Theme.of(context).textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                      onChanged: validatePhone,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                        errorStyle: const TextStyle(fontSize: 10),
                        errorText: _errorText,
                        border: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      ),

                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const LogInFlowPromptText(),
              const Spacer(),
              TextButton(
                onPressed: _isRegisterValid
                  ? () {
                      registerData.updatePhoneNumber(_phoneController!.text);
                      Navigator.of(context).pushNamed("/register/password");
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
