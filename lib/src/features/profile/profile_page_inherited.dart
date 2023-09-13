import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:cadetbank/src/features/profile/widgets/create_username_prompt.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userDetails = LoggedInUserDataInherited.of(context)!.userDetails;

    return Scaffold(
      appBar: CadetBankAppBar.pushStyle(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ValueListenableBuilder(
            valueListenable: userDetails,
            builder: (context, user, _) {
              final isUsernameAvailable = user?.username != null;
              return Column(
                children: [
                  if (!isUsernameAvailable)
                    const CreateUsernamePrompt(),
                  const SizedBox(height: 16),
                  InfoTable(
                    tableData: <String, String>{
                      "Email": user?.email ?? "N/A",
                      "Account Type": user?.accountType ?? "N/A",
                      "Phone number": user?.phone ?? "N/A",
                      if (isUsernameAvailable)
                        "Username": user!.username!
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
