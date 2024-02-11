import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/styling/text_styles.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:cadetbank/src/features/profile/create_username_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';

class CreateUsernamePage extends StatefulWidget {
  const CreateUsernamePage({super.key});

  @override
  State<CreateUsernamePage> createState() => _CreateUsernamePageState();
}

class _CreateUsernamePageState extends State<CreateUsernamePage> {
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();

  @override
  initState() {
    super.initState();
    _focusNode.addListener(_scrollToBottom);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_scrollToBottom);
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_focusNode.hasFocus) {
      Future.delayed(const Duration(milliseconds: 300), () {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.linear,
        );
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: 12. Wrap this inside ChangeNotifierProvider<CreateUsernameProvider>
    return LoadingOverlay(
      isLoading: false, // TODO: 14 listen to loading state
      child: Scaffold(
        appBar: CadetBankAppBar.pushStyle(),
        body: SafeArea(
          child: KeyboardDismissOnTap(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom > 0
                      ? 124
                      : 0
                  ),
                  child: SizedBox(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      physics: const ClampingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Create a @username",
                              style: Theme.of(context).textTheme.displayLarge!
                                .copyWith(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Send or request money with your Maya friends quickly with a username. Add it to your Maya card for an extra personal touch.",
                              style: Theme.of(context).textTheme.bodyLarge!
                                .copyWith(color: CustomColors.grey6Color),
                            ),
                            const SizedBox(height: 24),
                            TextFormField(
                              focusNode: _focusNode,
                              autocorrect: false,
                              enableSuggestions: false,
                              style: Theme.of(context).textTheme.titleSmall!
                                .copyWith(fontWeight: FontWeight.w600),
                              // TODO: 16 call `onUsernameChanged`
                              // snippet:cadetcreateonchange
                              decoration: const InputDecoration(
                                labelText: "Username",
                                hintText: "Enter username",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: CustomColors.primaryWhiteColor,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),
                      // TODO: 17. Disable button when username is invalid
                      TextButton(
                        onPressed: () async {
                          FocusScope.of(context).unfocus();

                          // Call update api
                          final res = await context
                            .read<CreateUsernameProvider>() 
                            .updateUsername();

                          if (res != null) {
                            // TODO: 18. update current user
                            // snippet:providerupdateusercreation

                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text("Next"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
