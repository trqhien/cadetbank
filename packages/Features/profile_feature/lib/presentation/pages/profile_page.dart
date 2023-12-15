import 'package:coreui/coreui.dart';
import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_feature/presentation/bloc/profile_bloc.dart';
import 'package:profile_feature/presentation/widgets/create_username_prompt.dart';
import 'package:profile_feature/presentation/widgets/info_table.dart';
import 'package:shared_states/shared_states.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProfileBloc(resolve(), resolve()),
        child: BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
          state.whenOrNull(
            logOutCompleted: (result) => result.maybeWhen(
                success: () {
                  context.read<AuthenticatedUserBloc>().add(const AuthenticatedUserEvent.userLoggedOut());
                  Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => route.settings.name == "/login");
                },
                orElse: () {}),
          );
        }, builder: (context, state) {
          return LoadingOverlay(
            isLoading: state.maybeWhen(loading: () => true, orElse: () => false),
            child: Scaffold(
              appBar: CadetBankAppBar.pushStyle(),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: BlocBuilder<AuthenticatedUserBloc, AuthenticatedUserState>(
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (!state.isUsernameAvailable)
                            const CreateUsernamePrompt(),
                          const SizedBox(height: 16),
                          InfoTable(tableData: <String, String>{
                            "Email": state.authenticatedUser?.email ?? "N/A",
                            "Account Type": state.authenticatedUser?.accountType ?? "N/A",
                            "Phone number": state.authenticatedUser?.phone ?? "N/A",
                            if (state.isUsernameAvailable)
                              "Username": state.authenticatedUser!.username!
                          }),
                          const Spacer(),
                          TextButton(
                            style: Theme.of(context).textButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                              if (states.contains(MaterialState.pressed)) return CustomColors.primaryBlack72Color;
                              if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) return CustomColors.primaryBlack72Color;
                              if (states.contains(MaterialState.disabled)) return CustomColors.grey10Color.withAlpha(75);
                              return CustomColors.primaryBlackColor;
                            })),
                            onPressed: () => context.read<ProfileBloc>().add(const LogOut()),
                            child: const Text("Log out"),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
