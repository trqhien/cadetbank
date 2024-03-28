import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

enum CustomButtonStyle {
  greenBig,
  greenMedium,
  blackBig,
  grayBig,
  grayMedium,
  graySmall,
  greenSmall,
  lightGreenSmall,
  lightGreenMedium,
  lightGreenBig,
  infoBanner,
  gradient,
  purplePill,
  redText,
}

enum TapCheckingMode {
  debounce,
  throttle,
  none,
}

extension GetCustomButtonStyles on CustomButtonStyle {
  ButtonStyle getButtonStyle(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    switch (this) {
      case CustomButtonStyle.greenBig:
        return themeData.greenBigButtonStyle;
      case CustomButtonStyle.greenMedium:
        return themeData.greenMediumButtonStyle;
      case CustomButtonStyle.blackBig:
        return themeData.blackBigButtonStyle;
      case CustomButtonStyle.grayBig:
        return themeData.grayBigButtonStyle;
      case CustomButtonStyle.grayMedium:
        return themeData.grayMediumButtonStyle;
      case CustomButtonStyle.graySmall:
        return themeData.graySmallButtonStyle;
      case CustomButtonStyle.greenSmall:
        return themeData.greenSmallButtonStyle;
      case CustomButtonStyle.lightGreenBig:
        return themeData.lightGreenBigButtonStyle;
      case CustomButtonStyle.lightGreenMedium:
        return themeData.lightGreenMediumButtonStyle;
      case CustomButtonStyle.lightGreenSmall:
        return themeData.lightGreenSmallButtonStyle;
      case CustomButtonStyle.infoBanner:
        return themeData.infoBannerButtonStyle;
      case CustomButtonStyle.gradient:
        return themeData.gradientButtonStyle;
      case CustomButtonStyle.purplePill:
        return themeData.purplePillStyle;
      case CustomButtonStyle.redText:
        return themeData.redTextButtonStyle;
    }
  }
}

class RoundedTextButton extends StatelessWidget {
  final Widget child;
  final bool enabled;
  final double? height;
  final double? width;
  final bool isNetworkAction;
  final CustomButtonStyle style;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onPressed;
  final Duration tapCheckingDuration;
  final String? tapCheckingTag;
  final TapCheckingMode tapCheckingMode;
  final String? semanticLabel;

  const RoundedTextButton({
    required this.onPressed,
    required this.child,
    this.style = CustomButtonStyle.greenBig,
    this.isNetworkAction = false,
    this.tapCheckingMode = TapCheckingMode.none,
    this.enabled = true,
    this.semanticLabel,
    this.padding,
    this.height,
    this.width,
    this.tapCheckingTag,
    this.tapCheckingDuration = const Duration(milliseconds: 300),
    Key? key,
  })  : assert(
          tapCheckingMode == TapCheckingMode.none || tapCheckingTag != null,
          "tapCheckingTag can't be null if tapCheckingMode is not none",
        ),
        super(key: key);

  factory RoundedTextButton.networkThrottled({
    CustomButtonStyle style = CustomButtonStyle.greenBig,
    EdgeInsetsGeometry? padding,
    GestureTapCallback? onPressed,
    double? height,
    bool? enabled,
    String? semanticLabel,
    required String tapCheckingTag,
    required Widget child,
  }) =>
      RoundedTextButton(
        enabled: enabled ?? true,
        isNetworkAction: true,
        onPressed: onPressed,
        padding: padding,
        height: height,
        style: style,
        semanticLabel: semanticLabel,
        tapCheckingTag: tapCheckingTag,
        tapCheckingMode: TapCheckingMode.throttle,
        child: child,
      );

  factory RoundedTextButton.debounced({
    CustomButtonStyle style = CustomButtonStyle.greenBig,
    GestureTapCallback? onPressed,
    EdgeInsetsGeometry? padding,
    bool? isNetworkAction,
    double? height,
    bool? enabled,
    String? semanticLabel,
    required String tapCheckingTag,
    required Widget child,
  }) =>
      RoundedTextButton(
        isNetworkAction: isNetworkAction ?? false,
        enabled: enabled ?? true,
        onPressed: onPressed,
        padding: padding,
        height: height,
        style: style,
        semanticLabel: semanticLabel,
        tapCheckingMode: TapCheckingMode.debounce,
        tapCheckingTag: tapCheckingTag,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      button: true,
      explicitChildNodes: true,
      child: Container(
        height: height,
        width: width,
        padding: padding ?? const EdgeInsets.all(0),
        child: Opacity(
          opacity: enabled ? 1 : 0.4,
          child: TextButton(
            style: style.getButtonStyle(context),
            onPressed: () async {
              switch (tapCheckingMode) {
                case TapCheckingMode.debounce:
                  EasyDebounce.debounce(
                    tapCheckingTag!,
                    tapCheckingDuration,
                    () async => await onTapped(context),
                  );
                  break;
                case TapCheckingMode.throttle:
                  EasyThrottle.throttle(
                    tapCheckingTag!,
                    tapCheckingDuration,
                    () async => await onTapped(context),
                  );
                  break;
                case TapCheckingMode.none:
                default:
                  await onTapped(context);
                  break;
              }
            },
            child: Align(
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onTapped(BuildContext context) async {
    if (enabled) {
      // await serviceLocator<ICrashMonitoringHelper>().log(
      //   LogEvents.logButtonTapped(semanticLabel ?? Constants.noLabel),
      // );
      // if (isNetworkAction) {
      //   await NetworkUtil.onNetworkButtonTapped(
      //     context,
      //     onTappedAndConnected: onPressed ?? () {},
      //   );
      // } else {
      onPressed?.call();
      // }
    }
  }
}
