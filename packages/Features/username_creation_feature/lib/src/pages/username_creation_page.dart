import 'package:coreui/coreui.dart';
import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:shared_states/shared_states.dart';
import 'package:username_creation_feature/src/bloc/username_creation_bloc.dart';

class UsernameCreationPage extends StatefulWidget {
  const UsernameCreationPage({super.key});

  @override
  State<UsernameCreationPage> createState() => _UsernameCreationPageState();
}

class _UsernameCreationPageState extends State<UsernameCreationPage> {
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
    return BlocProvider(
      create: (context) => UsernameCreationBloc(resolve())
        ..add(const UsernameCreationEvent.usernameChanged("")),
      child: BlocConsumer<UsernameCreationBloc, UsernameCreationState>(
        listenWhen:(previous, current) => previous.result != current.result,
      listener: (context, state) {
        state.result?.maybeWhen(
          success: (username) {
            context.read<AuthenticatedUserBloc>().add(AuthenticatedUserEvent.updateUsername(username));

            Navigator.of(context).pop();
          },
          orElse: () {}
        );
      },  
      builder: (context, state) {
        return LoadingOverlay(
          isLoading: state.isLoading,
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
                                  onChanged: (username) => context.read<UsernameCreationBloc>()
                                    .add(UsernameCreationEvent.usernameChanged(username)),
                                  decoration: const InputDecoration(
                                    labelText: "Username",
                                    hintText: "Enter username",
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      "@username's rules",
                                      style: Theme.of(context).textTheme.bodySmall!.grey7Color.semiBold
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          state.validationError != null && state.validationError!.containsLengthValidatorError
                                            ? Icons.close_rounded
                                            : Icons.check_rounded, 
                                          size: 10, 
                                          color: state.validationError != null && state.validationError!.containsLengthValidatorError
                                            ? CustomColors.errorColor
                                            : CustomColors.primaryGreenColor,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          "• MUST be 3 to 24 characters in length",
                                          style: Theme.of(context).textTheme.bodySmall!.grey7Color.copyWith(height: 1.1)
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          state.validationError != null && state.validationError!.containsRegexValidatorError
                                            ? Icons.close_rounded
                                            : Icons.check_rounded, 
                                          size: 10, 
                                          color: state.validationError != null && state.validationError!.containsRegexValidatorError
                                            ? CustomColors.errorColor
                                            : CustomColors.primaryGreenColor,
                                        ),

                                        const SizedBox(width: 4),
                                        Expanded(
                                          child: Text(
                                            "• MUST contain at least 1 letter. Aside from letters, you can include numbers, periods or underscores",
                                            style: Theme.of(context).textTheme.bodySmall!.grey7Color.copyWith(height: 1.1)
                                          ),
                                        )
                                      ]
                                    )
                                  ],
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
                          state.result?.maybeWhen(
                            faillure: (reason) => Text(reason),
                            orElse: () => null
                          ) ?? const SizedBox(),
                          const SizedBox(height: 20),
                          TextButton(
                            onPressed: state.validationError == null
                              ? () async {
                                // Dismiss keyboard
                                FocusScope.of(context).unfocus();

                                final res = context
                                  .read<UsernameCreationBloc>()
                                  .add(const UsernameCreationEvent.usernameCreationFormSubmitted());
                              }
                              : null,
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
    ));
  }
}
