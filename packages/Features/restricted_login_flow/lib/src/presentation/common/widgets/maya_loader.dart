import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

class MayaLoader extends StatelessWidget {
  const MayaLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        Assets.animationLoading,
        height: Dimens.spacing16,
        package: Strings.packageName,
      ),
    );
  }
}
