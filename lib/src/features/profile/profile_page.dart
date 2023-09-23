import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:cadetbank/src/features/profile/profile_provider.dart';
import 'package:cadetbank/src/features/profile/widgets/create_username_prompt.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileProvider>(
      create: (context) => ProfileProvider(),
      builder: (context, _) {
        return LoadingOverlay(
          isLoading: context.watch<ProfileProvider>().isLoading,
          child: Scaffold(
            appBar: CadetBankAppBar.pushStyle(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Selector<AppState, bool>(
                  selector: (context, appState) => appState.user?.username != null,
                  builder: (context, isUsernameAvailable, _) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (!isUsernameAvailable)
                          const CreateUsernamePrompt(),
                        const SizedBox(height: 16),
                        InfoTable(
                          tableData: <String, String>{
                            "Email": context.watch<AppState>().user?.email ?? "N/A",
                            "Account Type": context.watch<AppState>().user?.accountType ?? "N/A",
                            "Phone number": context.watch<AppState>().user?.phone ?? "N/A",
                            if (isUsernameAvailable)
                              "Username": context.watch<AppState>().user!.username!
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
                              // remove current user
                              context.read<AppState>().logoutUser();
                              
                              // Push to home screen
                              Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => route.settings.name == "/login");
                            }
                          },
                          child: const Text("Log out"),
                        ),
                      ],
                    );
                  }
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
