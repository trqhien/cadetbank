
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EmailRegisterPage extends StatelessWidget {
  const EmailRegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CadetBankAppBar.modalStyle(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Enter your email address",
                  style: Theme.of(context).textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  labelText: 'Email',
                  // validatedField: state.goalNameValidation,
                  hintText: 'john.doe@xyz.com',
                ),
                const SizedBox(height: 20),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              ],
            ),
          )
        ),
    );
  }
}
