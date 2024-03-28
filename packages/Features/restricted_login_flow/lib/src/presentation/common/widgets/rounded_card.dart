import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

class RoundedCard extends StatelessWidget {
  final double padding;
  final double borderRadius;
  final Color borderColor;
  final Color color;
  final Widget child;

  const RoundedCard({
    super.key,
    this.padding = Dimens.spacing16,
    this.borderRadius = Dimens.borderRadius16,
    this.borderColor = CustomColors.grey2Color,
    this.color = CustomColors.primaryWhiteColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
