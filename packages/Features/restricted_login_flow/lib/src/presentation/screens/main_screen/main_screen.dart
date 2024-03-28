import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restricted_login_flow/src/data/common/enums/blocked_state_type.dart';
import 'package:restricted_login_flow/src/infrastructure/maya_method_channel/maya_method_channel.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/get_it/get_it_injector_impl.dart';
import 'package:restricted_login_flow/src/presentation/common/widgets/maya_loader.dart';
import 'package:restricted_login_flow/src/presentation/common/widgets/rounded_text_button.dart';
import 'package:restricted_login_flow/src/presentation/cubits/main_screen_cubit/main_screen_cubit.dart';
import 'package:restricted_login_flow/src/presentation/screens/main_screen/widgets/account_balances.dart';
import 'package:restricted_login_flow/src/presentation/screens/main_screen/widgets/content_banner.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: BlocBuilder<IMainScreenCubit, MainScreenState>(
        bloc: injector.get<IMainScreenCubit>()..init(),
        builder: (context, state) => state.maybeWhen(
          loading: () => const MayaLoader(),
          ready: (fciCode) => MainScreenContent(
            errorCode: fciCode,
          ),
          orElse: () => const MainScreenContent(
            errorCode: Strings.defaultFCICode,
          ),
        ),
      ),
    );
  }
}

class MainScreenContent extends StatelessWidget {
  final String errorCode;

  const MainScreenContent({
    super.key,
    required this.errorCode,
  });

  @override
  Widget build(BuildContext context) {
    final AppMethodChannel _methodChannel = AppMethodChannel();

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                CustomColors.grey1Color,
                CustomColors.grey1Color70,
              ],
              begin: FractionalOffset(1.0, 0.25),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.spacing24),
            child: ListView(
              children: [
                const SizedBox(height: Dimens.spacing106),
                ContentBanner(blockedState: errorCode.asBlockedStateType),
                const SizedBox(height: Dimens.spacing16),
                const AccountBalances(),
                const SizedBox(height: Dimens.spacing16),
                RoundedTextButton(
                  style: CustomButtonStyle.grayMedium,
                  onPressed: () => _methodChannel.logout(),
                  child: const Text('Log out'),
                ),
                const SizedBox(height: Dimens.spacing24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
