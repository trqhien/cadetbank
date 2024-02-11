import 'package:cadetbank/src/core/storage/storage.dart';
import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/features/profile/widgets/create_username_prompt.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/logout_response.dart';
import 'package:cadetbank/src/network/dio_client.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final dio = DioClient.shared.dio;
  bool _isLoading = false;
  String? _apiError;

  @override
  Widget build(BuildContext context) {
    // TODO: 7. Retrieve `userDetails` instance. 
    // snippet:loggedInUser
    final loggedInUserDetails = LoggedInUserDataInherited.of(context)!.userDetails;

    return LoadingOverlay(
      isLoading: _isLoading,
      child: Scaffold(
        appBar: CadetBankAppBar.pushStyle(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            // TODO: 8. Watch `loggedInUserDetails` using `ValueListenableBuilder`
            child: ValueListenableBuilder(
              valueListenable: loggedInUserDetails,
              builder: (context, user, _) {
                return Column(
                  children: [
                    // TODO: 9. Show `CreateUsernamePrompt` if username is not available
                    if (user?.username == null)
                      const CreateUsernamePrompt(),
                    const SizedBox(height: 16),
                    InfoTable(
                      tableData: <String, String>{
                        "Email": user?.email ?? "N/A", // TODO: 10. User's email or N/A
                        "Account Type": user?.accountType ?? "N/A", // TODO: 11. User's account type or N/A
                        "Phone number": user?.phone ?? "N/A", // TODO: 12. User's phone number or N/A
                        if (user?.username != null)
                          "Username": user!.username! // TODO: 13: Show username if available. Otherwise hide
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
                        final res = await _logout();
  
                        if (res != null) {
                          // TODO: 16. remove current user
                          // snippet:cadetremoveuser
                          loggedInUserDetails.value = null;
                          
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

  Future<LogoutResponse?> _logout() async {
    setState(() {  
      _apiError = null;
      _isLoading = true;
    });

    LogoutResponse? logoutResponse;

    try {
      final res = await dio.post<Map<String, dynamic>>("/auth/logout");

      final apiRes = ApiResponse.fromJson(res.data!, LogoutResponse.fromJson);

      if (apiRes.isSuccessful) {
        logoutResponse = apiRes.response!;
        Storage.remove(StorageKey.token);
        Storage.remove(StorageKey.refreshRoken);
      } else {
        _apiError = apiRes.error!.reason;
      }
    } catch (err) {
      _apiError = err.toString();
    }

    _isLoading = false;
    setState(() {});

    return logoutResponse;
  }
}
