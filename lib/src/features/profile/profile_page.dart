import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:cadetbank/src/features/profile/profile_provider.dart';
import 'package:cadetbank/src/features/profile/widgets/create_username_prompt.dart';
import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // snippet:cadetprofileprovider
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      builder: (context, _) {
        return LoadingOverlay(
          isLoading: context.watch<ProfileProvider>().isLoading,
          child: Scaffold(
            appBar: CadetBankAppBar.pushStyle(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                // TODO: 10. Wrap the entire widet inside Selector
                // snippet:selectorappstate
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // TODO: 5. Show CreateUsernamePrompt if username is not available
                    const SizedBox(height: 16),
                    InfoTable(
                      tableData: <String, String>{
                        "Email": "N/A", // TODO: 6. Show email, otherwise N/A
                        "Account Type": "N/A", // TODO: 7. Show account type, otherwise N/A
                        "Phone number": "N/A", // TODO: 8. Show phone number, otherwise N/A
                        "Username": "N/A" // TODO: 9. Show username, otherwise hidden
                      }
                    ),
                    const Spacer(),
                    TextButton(
                      style: Theme.of(context).textButtonTheme.style!
                        .copyWith(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                            if (states.contains(MaterialState.pressed)) return CustomColors.primaryBlack72Color;
                            if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) return CustomColors.primaryBlack72Color;
                            if (states.contains(MaterialState.disabled)) return CustomColors.grey10Color.withAlpha(75);
                            return CustomColors.primaryBlackColor;
                          })
                        ),
                      onPressed: () async {
                        // Call log out API
                        final res = await context
                          .read<ProfileProvider>()
                          .logout();

                        if (res != null) {
                          // TODO: 11. remove current user
                          // snippet:logoutUser
                          
                          // Push to home screen
                          Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => route.settings.name == "/login");
                        }
                      },
                      child: const Text("Log out"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
