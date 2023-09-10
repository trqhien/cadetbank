import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CadetBankAppBar.empty(),
      body: SafeArea(
        // minimum: const EdgeInsets.only(bottom: 64),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                "Home Page",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!
                  .copyWith(fontWeight: FontWeight.w600)
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}