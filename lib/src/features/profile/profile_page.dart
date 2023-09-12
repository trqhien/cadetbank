// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_provider.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userDetails = LoggedInUserDataProvider.of(context)!.userDetails;
    return Scaffold(
      appBar: CadetBankAppBar.pushStyle(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ValueListenableBuilder(
            valueListenable: userDetails,
            builder: (context, user, _) {
              final isUsernameAvailable = user != null && user.username != null;
              
              return Column(
                children: [
                  if (!isUsernameAvailable)
                    const _CreateUsernamePrompt(),
                  const SizedBox(height: 16),
                  InfoTable(
                    tableData: <String, String>{
                      "Email": "exam.ple@maya.com",
                      "Account Type": "Business",
                      "Phone number": "+84382428341",
                      if (isUsernameAvailable)
                        "username": user.username!
                    }
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}

class _CreateUsernamePrompt extends StatelessWidget {
  const _CreateUsernamePrompt();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CustomColors.pink25Color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create your username",
                  style: Theme.of(context).textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Text(
                  "Easily send and receive money with your own personalized username. Hurry- usernames are first come, first served!",
                  softWrap: true,
                  // maxLines: 5,
                  // overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium!
                    // .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  child: Text(
                    "Get started",
                    style: Theme.of(context).textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700, color: CustomColors.primaryGreenColor),
                  ),
                  onTap: () => Navigator.of(context).pushNamed("/profile/create-username"), 
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/AvatarWith@Sign.png",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ],
      )
    );
  }
}
