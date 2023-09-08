
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/custom_textfield.dart';
import 'package:cadetbank/src/features/app/cadet_bank_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailRegisterPage extends StatelessWidget {
  const EmailRegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final isOnboarded = context.dependOnInheritedWidgetOfExactType<Onboarding>()!.isOnboarded;
    // final primaryColor = Preference.of(context)!.primaryColor;
    // final isOnboarded = context.inheritFromWidget0fExactType(Onboarding).asset;
    // final ok = context.getElementForInheritedWidgetOfExactType<Onboarding>();


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
                  onPressed: () {
                    // if (primaryColor.value == CustomColors.primaryBlackColor) {
                    //   primaryColor.value = CustomColors.darkBlue;
                    // } else {
                    //   primaryColor.value = CustomColors.primaryBlackColor; 
                    // }
  //                   Navigator.push<void>(
  //                     context,
  //                     MaterialPageRoute<void>(
  //                       builder: (BuildContext context) => const Purple()
  //                     )
  // );
                    // Navigator.of(context).popUntil((route) => false);
                    // Navigator.of(context).canPop();
                    // Navigator.of(context).maybePop();
                    // Navigator.of(context).pushAndRemoveUntil(
                    //   MaterialPageRoute(builder: (context) => const Screen1()),
                    //   (route) => route.runtimeType == Screen2
                    //   // ModalRoute.withName('/'),
                    // );
                    // Navigator.of(context).pushReplacement(newRoute);
                    // GoRouter.of(context).pushReplacement("location")  // ("/register"),
                  },
                  child: const Text("Toggle primary color"),
                ),
              ],
            ),
          )
        ),
    );
  }
}
