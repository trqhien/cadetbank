import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:flutter/material.dart';

class SuccessfulRegisterConfirmationPage extends StatelessWidget {
  const SuccessfulRegisterConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CadetBankAppBar.empty(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/UpgradeGreen.png",
                width: 320,
                height: 320,
                fit: BoxFit.cover,
              ),
              Text(
                "You're all set",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!
                  .copyWith(fontWeight: FontWeight.w600)
              ),
              const Spacer(),
              TextButton(
                child: const Text("Start browsing"),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    "/home", 
                    (route) => route.settings.name == "/register/email"
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
