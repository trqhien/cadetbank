import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network/network.dart';
import 'package:paymaya_dev_login/src/commons/dev_constants.dart';
import 'package:paymaya_dev_login/src/data/dev_login_repository.dart';
import 'package:paymaya_dev_login/src/data/dev_login_rest_client.dart';
import 'package:paymaya_dev_login/src/feature/loader/loading_screen.dart';
import 'package:paymaya_dev_login/src/feature/login/cubit/dev_login_cubit.dart';
import 'package:paymaya_dev_login/src/resources/dimensions.dart';
// import 'package:shared_preferences/shared_preferences.dart';

/// Displays the login screen for dev purposes only
class DevLoginScreen extends StatelessWidget {
  /// The MIN initially displayed at screen open
  final String? initialMIN;

  /// The password initially displayed at screen open
  final String? initialPassword;

  /// The access token initially displayed at screen open
  final String? initialAccessToken;

  /// The base URL to use for logging in. The API used to login is /v1/sessions
  final String? baseURL;

  /// The package name of the flutter project that will use the dev login screen
  final String packageName;
  const DevLoginScreen({
    this.initialMIN,
    this.initialPassword,
    this.initialAccessToken,
    this.baseURL,
    required this.packageName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DevLoginCubit>(
      create: (_) => DevLoginCubit(
        resolve()
      )..init(
          initialMIN ?? DevConstants.devLoginInitialMin,
          initialPassword ?? DevConstants.devLoginInitialPassword,
          initialAccessToken ?? DevConstants.devLoginInitialAccessToken,
          packageName,
        ),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<DevLoginCubit, DevLoginState>(
            listener: (context, state) => state.whenOrNull(
              proceed: (_) => null,
            ),
            builder: (context, state) => state.maybeWhen(
              loading: () => const LoaderTransparent(),
              error: (error) => _ReadyStateContent(
                initialMIN: initialMIN,
                initialPassword: initialPassword,
                initialAccessToken: initialAccessToken,
                errorMessage: error.errorMessage,
              ),
              ready: (min) => _ReadyStateContent(
                initialMIN: min,
                initialPassword: initialPassword,
                initialAccessToken: initialAccessToken,
              ),
              proceed: (_) => _ReadyStateContent(
                initialMIN: initialMIN,
                initialPassword: initialPassword,
                initialAccessToken: initialAccessToken,
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      ),
    );
  }
}

class _ReadyStateContent extends StatelessWidget {
  final String? initialMIN;
  final String? initialPassword;
  final String? initialAccessToken;
  final String? errorMessage;
  const _ReadyStateContent({
    this.initialMIN,
    this.initialPassword,
    this.initialAccessToken,
    this.errorMessage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.spacing20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _LoginInput(
            labelText: 'MIN',
            initialText: initialMIN ?? DevConstants.devLoginInitialMin,
            hintText: 'e.g. 639997777001',
            onTextChanged: (text) =>
                context.read<DevLoginCubit>().onMinChanged(text),
            textInputType: TextInputType.number,
          ),
          const SizedBox(
            height: Dimens.spacing12,
          ),
          _LoginInput(
            labelText: 'PASSWORD',
            initialText:
                initialPassword ?? DevConstants.devLoginInitialPassword,
            hintText: '',
            onTextChanged: (text) =>
                context.read<DevLoginCubit>().onPasswordChanged(text),
          ),
          const SizedBox(
            height: Dimens.spacing12,
          ),
          _LoginInput(
            labelText: 'ACCESS TOKEN',
            initialText:
                initialAccessToken ?? DevConstants.devLoginInitialAccessToken,
            hintText: '',
            onTextChanged: (text) =>
                context.read<DevLoginCubit>().onAccessTokenChanged(text),
          ),
          const SizedBox(
            height: Dimens.spacing12,
          ),
          if (errorMessage != null) Text(errorMessage!),
          const Spacer(),
          TextButton(
              onPressed: () async {
                context.read<DevLoginCubit>().onLoginPressed();
              },
              child: const Text('Get Session Token')),
        ],
      ),
    );
  }
}

class _LoginInput extends StatefulWidget {
  final String? initialText;
  final Function(String)? onTextChanged;
  final String labelText;
  final String hintText;
  final TextInputType textInputType;

  const _LoginInput({
    Key? key,
    this.initialText,
    this.onTextChanged,
    required this.labelText,
    required this.hintText,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  State<_LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<_LoginInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.initialText ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.labelText,
      child: TextFormField(
        controller: _controller,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          hintText: widget.hintText,
          label: Text(widget.labelText),
        ),
        onChanged: widget.onTextChanged,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
