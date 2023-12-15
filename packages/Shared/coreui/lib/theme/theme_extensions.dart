import 'package:coreui/theme/styles.dart';
import 'package:coreui/values/colors.dart';
import 'package:coreui/values/dimens.dart';
import 'package:coreui/values/strings.dart';
import 'package:flutter/material.dart';

extension ThemeDataExtensions on ThemeData {
  ///Returns true when the brightness of the ThemeData passed to the MaterialApp is `dark`
  bool get isDarkMode => brightness == Brightness.dark;

  //General Colors
  ///Used by success snack bar
  ///
  ///Light Mode: successLight
  ///
  ///Dark Mode: successDark
  Color get successColor {
    return brightness == Brightness.light
        ? CustomColors.successLight
        : CustomColors.successDark;
  }

  //Card Colors

  ///Cards background color
  ///
  ///Light Mode: grey1Color
  ///
  ///Dark Mode: grey10Color
  Color get secondaryCardColor {
    return brightness == Brightness.light
        ? CustomColors.grey1Color
        : CustomColors.grey10Color;
  }

  ///Cards background color
  ///
  ///Light Mode: primaryWhiteColor
  ///
  ///Dark Mode: grey7Color
  Color get tertiaryCardColor {
    return brightness == Brightness.light
        ? CustomColors.primaryWhiteColor
        : CustomColors.grey7Color;
  }

  ///Cards background color
  ///
  ///Light Mode: primaryWhiteColor
  ///
  ///Dark Mode: primaryBlackColor
  Color get inversePrimaryCardColor {
    return brightness == Brightness.light
        ? CustomColors.primaryWhiteColor
        : CustomColors.primaryBlackColor;
  }

  ///Cards background color
  ///
  ///Light Mode: grey2Color
  ///
  ///Dark Mode: grey8Color
  Color get transferChannelSelectedCardColor {
    return brightness == Brightness.light
        ? CustomColors.grey2Color
        : CustomColors.grey8Color;
  }

  //Divider Colors

  ///Divider color
  ///
  ///Light Mode: grey3Color
  ///
  ///Dark Mode: grey6Color
  Color get secondaryDividerColor {
    return brightness == Brightness.light
        ? CustomColors.grey3Color
        : CustomColors.grey6Color;
  }

  //Icon Colors

  ///Icons color
  ///
  ///Light Mode: primaryBlackColor
  ///
  ///Dark Mode: primaryWhiteColor
  Color get secondaryIconColor {
    return brightness == Brightness.light
        ? CustomColors.primaryBlackColor
        : CustomColors.primaryWhiteColor;
  }

  //Background Colors

  ///Scaffold background color
  ///
  ///Light Mode: grey3Color
  ///
  ///Dark Mode: grey6Color
  Color get secondaryBackgroundColor {
    return brightness == Brightness.light
        ? CustomColors.grey3Color
        : CustomColors.grey6Color;
  }

  ///Background color of hidable sections of scaffold
  ///
  ///Light Mode: lightGreen15Color
  ///
  ///Dark Mode: darkModeGreen40Color
  Color get visibleDataDefaultBackgroundColor {
    return brightness == Brightness.light
        ? CustomColors.lightGreen15Color
        : CustomColors.darkModeGreen40Color;
  }

  ///Background color of Info Banners
  ///
  ///Light Mode: primaryWhiteColor
  ///
  ///Dark Mode: grey8Color
  Color get infoBannerBackgroundColor {
    return brightness == Brightness.light
        ? CustomColors.primaryWhiteColor
        : CustomColors.grey8Color;
  }

  //Text Colors
  Color get primaryTextColor {
    return brightness == Brightness.light
        ? CustomColors.primaryBlackColor
        : CustomColors.primaryWhiteColor;
  }

  Color get inversePrimaryTextColor {
    return brightness == Brightness.light
        ? CustomColors.primaryWhiteColor
        : CustomColors.primaryBlackColor;
  }

  Color get secondaryTextColor {
    return brightness == Brightness.light
        ? CustomColors.grey6Color
        : CustomColors.grey4Color;
  }

  Color get tertiaryTextColor {
    return brightness == Brightness.light
        ? CustomColors.grey5Color
        : CustomColors.grey4Color;
  }

  Color get textFieldHintColor {
    return brightness == Brightness.light
        ? CustomColors.grey4Color
        : CustomColors.grey6Color;
  }

  Color get longReadTextColor {
    return brightness == Brightness.light
        ? CustomColors.grey4Color
        : CustomColors.grey5Color;
  }

  //Search Colors
  ///Fill color for search text fields with
  ///
  ///Light Mode: primaryWhiteColor
  ///
  ///Dark Mode: grey10Color
  Color get searchFillColor {
    return brightness == Brightness.light
        ? CustomColors.primaryWhiteColor
        : CustomColors.grey10Color;
  }

  ///Unfocused border color of search text fields
  ///
  ///Light Mode: grey3Color
  ///
  ///Dark Mode: grey10Color
  Color get searchUnfocusedBorderColor {
    return brightness == Brightness.light
        ? CustomColors.grey3Color
        : CustomColors.grey10Color;
  }

  ///Focused border color of search text fields
  ///
  ///Light Mode: grey4Color
  ///
  ///Dark Mode: grey5Color
  Color get searchFocusedBorderColor {
    return brightness == Brightness.light
        ? CustomColors.grey4Color
        : CustomColors.grey5Color;
  }

  //Tabs
  ///Light Mode: grey1Color
  ///
  ///Dark Mode: darkModeGrey40Color
  Color get unselectedTabColor {
    return brightness == Brightness.light
        ? CustomColors.grey1Color
        : CustomColors.darkModeGrey40Color;
  }

  ///Light Mode: grey3Color
  ///
  ///Dark Mode: grey11Color
  Color get selectedTabColor {
    return brightness == Brightness.light
        ? CustomColors.primaryBlackColor
        : CustomColors.grey11Color;
  }

  //Slidable
  ///Light Mode: grey1Color
  ///
  ///Dark Mode: grey6Color
  Color get extendedSlidableColor {
    return brightness == Brightness.light
        ? CustomColors.grey1Color
        : CustomColors.grey6Color;
  }

  //Snackbar Colors
  ///Light Mode: snackBarErrorColor
  ///
  ///Dark Mode: darkModeSnackbarErrorColor
  Color get snackbarErrorBackgroundColor {
    return brightness == Brightness.light
        ? CustomColors.snackbarErrorColor
        : CustomColors.darkModeSnackbarErrorColor;
  }

  //Misc Colors
  ///Light Mode: grey3Color
  ///
  ///Dark Mode: grey8Color
  Color get infoBannerBorderColor {
    return brightness == Brightness.light
        ? CustomColors.grey3Color
        : CustomColors.grey8Color;
  }

  ///Light Mode: primaryBlackColor
  ///
  ///Dark Mode: primaryWhiteColor
  Color get formStepsIndicatorColor {
    return brightness == Brightness.light
        ? CustomColors.primaryBlackColor
        : CustomColors.primaryWhiteColor;
  }

  ///Light Mode: grey7Color
  ///
  ///Dark Mode: grey4Color
  Color get infoTextGreyIconColor {
    return brightness == Brightness.light
        ? CustomColors.grey7Color
        : CustomColors.grey4Color;
  }

  ///Light Mode: grey1Color
  ///
  ///Dark Mode: grey8Color
  Color get infoTextGreyBackgroundColor {
    return brightness == Brightness.light
        ? CustomColors.grey2Color
        : CustomColors.grey8Color;
  }

  ///Texts with Jeko as [FontFamily] and grey6 in light mode and grey4 in dark mode
  TextTheme get secondaryJeko {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge!.copyWith(color: secondaryTextColor),
      displayMedium:
          textTheme.displayMedium!.copyWith(color: secondaryTextColor),
      displaySmall: textTheme.displaySmall!.copyWith(color: secondaryTextColor),
      headlineMedium:
          textTheme.headlineMedium!.copyWith(color: secondaryTextColor),
      headlineSmall:
          textTheme.headlineSmall!.copyWith(color: secondaryTextColor),
      titleLarge: textTheme.titleLarge!.copyWith(color: secondaryTextColor),
      titleMedium: textTheme.titleMedium!.copyWith(color: secondaryTextColor),
      titleSmall: textTheme.titleSmall!.copyWith(color: secondaryTextColor),
      bodyLarge: textTheme.bodyLarge!.copyWith(color: secondaryTextColor),
      bodyMedium: textTheme.bodyMedium!.copyWith(color: secondaryTextColor),
    );
  }

  ///Texts with cerebri as [FontFamily] and grey6 in light mode and grey4 in dark mode
  TextTheme get secondaryCerebriSansPro {
    return textTheme.copyWith(
      displayLarge:
          primaryTextTheme.displayLarge!.copyWith(color: secondaryTextColor),
      displayMedium:
          primaryTextTheme.displayMedium!.copyWith(color: secondaryTextColor),
      displaySmall:
          primaryTextTheme.displaySmall!.copyWith(color: secondaryTextColor),
      headlineMedium:
          primaryTextTheme.headlineMedium!.copyWith(color: secondaryTextColor),
      headlineSmall:
          primaryTextTheme.headlineSmall!.copyWith(color: secondaryTextColor),
      titleLarge:
          primaryTextTheme.titleLarge!.copyWith(color: secondaryTextColor),
      titleMedium:
          primaryTextTheme.titleMedium!.copyWith(color: secondaryTextColor),
      titleSmall:
          primaryTextTheme.titleSmall!.copyWith(color: secondaryTextColor),
      bodyLarge:
          primaryTextTheme.bodyLarge!.copyWith(color: secondaryTextColor),
      bodyMedium:
          primaryTextTheme.bodyMedium!.copyWith(color: secondaryTextColor),
    );
  }

  ///Texts with Jeko as [FontFamily] and grey5 in light mode and grey4 in dark mode
  TextTheme get tertiaryJeko {
    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge!.copyWith(color: tertiaryTextColor),
      displayMedium:
          textTheme.displayMedium!.copyWith(color: tertiaryTextColor),
      displaySmall: textTheme.displaySmall!.copyWith(color: tertiaryTextColor),
      headlineMedium:
          textTheme.headlineMedium!.copyWith(color: tertiaryTextColor),
      headlineSmall:
          textTheme.headlineSmall!.copyWith(color: tertiaryTextColor),
      titleLarge: textTheme.titleLarge!.copyWith(color: tertiaryTextColor),
      titleMedium: textTheme.titleMedium!.copyWith(color: tertiaryTextColor),
      titleSmall: textTheme.titleSmall!.copyWith(color: tertiaryTextColor),
      bodyLarge: textTheme.bodyLarge!.copyWith(color: tertiaryTextColor),
      bodyMedium: textTheme.bodyMedium!.copyWith(color: tertiaryTextColor),
    );
  }

  ///Texts with cerebri as [FontFamily] and grey5 in light mode and grey4 in dark mode
  TextTheme get tertiaryCerebriSansPro {
    return textTheme.copyWith(
      displayLarge:
          primaryTextTheme.displayLarge!.copyWith(color: tertiaryTextColor),
      displayMedium:
          primaryTextTheme.displayMedium!.copyWith(color: tertiaryTextColor),
      displaySmall:
          primaryTextTheme.displaySmall!.copyWith(color: tertiaryTextColor),
      headlineMedium:
          primaryTextTheme.headlineMedium!.copyWith(color: tertiaryTextColor),
      headlineSmall:
          primaryTextTheme.headlineSmall!.copyWith(color: tertiaryTextColor),
      titleLarge:
          primaryTextTheme.titleLarge!.copyWith(color: tertiaryTextColor),
      titleMedium:
          primaryTextTheme.titleMedium!.copyWith(color: tertiaryTextColor),
      titleSmall:
          primaryTextTheme.titleSmall!.copyWith(color: tertiaryTextColor),
      bodyLarge: primaryTextTheme.bodyLarge!.copyWith(color: tertiaryTextColor),
      bodyMedium:
          primaryTextTheme.bodyMedium!.copyWith(color: tertiaryTextColor),
    );
  }

  static const _jekoBoldStyle = TextStyle(
    fontFamily: Styles.jeko,
    package: Strings.packageName,
    fontWeight: FontWeight.w700,
  );

  //Button Styles
  ButtonStyle get greenBigButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryGreenColor,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight56),
      textStyle: _jekoBoldStyle.fontSize16.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get greenMediumButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryGreenColor,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight44),
      textStyle: _jekoBoldStyle.fontSize16.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get greenSmallButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryGreenColor,
      textStyle: _jekoBoldStyle.fontSize16.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get lightGreenBigButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryGreenColor,
      backgroundColor: CustomColors.lightGreen15Color,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight56),
      textStyle: _jekoBoldStyle.fontSize16.primaryGreenColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get lightGreenMediumButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryGreenColor,
      backgroundColor: CustomColors.secondaryGreenColor,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight44),
      textStyle: _jekoBoldStyle.fontSize16.primaryGreenColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get lightGreenSmallButtonStyle {
    return TextButton.styleFrom(
      padding: EdgeInsets.zero,
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: CustomColors.primaryGreenColor,
      backgroundColor: CustomColors.lightGreen15Color,
      textStyle: _jekoBoldStyle.fontSize16.primaryGreenColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get grayBigButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryBlackColor,
      backgroundColor: CustomColors.grey3Color,
      textStyle: _jekoBoldStyle.fontSize16.primaryBlackColor,
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.spacing16,
        horizontal: Dimens.spacing12,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.borderRadius16,
        ),
      ),
    );
  }

  ButtonStyle get graySmallButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: brightness == Brightness.light
          ? CustomColors.primaryBlackColor
          : CustomColors.primaryWhiteColor,
      backgroundColor: brightness == Brightness.light
          ? CustomColors.grey3Color
          : CustomColors.grey7Color,
      textStyle: _jekoBoldStyle.fontSize16.primaryBlackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get blackBigButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryBlackColor,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight56),
      textStyle: _jekoBoldStyle.fontSize16.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get infoBannerButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryBlackColor,
      backgroundColor: infoBannerBackgroundColor,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight66),
      textStyle: _jekoBoldStyle.fontSize16.primaryBlackColor,
      side: BorderSide(color: infoBannerBorderColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get gradientButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: Colors.transparent,
      textStyle: _jekoBoldStyle.fontSize12.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius12),
      ),
    );
  }

  ButtonStyle get purplePillStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.purpleColor,
      backgroundColor: CustomColors.primaryWhite80Color,
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.spacing8,
        horizontal: Dimens.spacing12,
      ),
      textStyle: _jekoBoldStyle.fontSize12.purpleColor
          .textHeight(1.33)
          .bold
          .centeredVerticalAlign,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  ButtonStyle get redTextButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.errorColor,
      backgroundColor: Colors.transparent,
      fixedSize: const Size.fromHeight(Dimens.textButtonHeight56),
      textStyle: _jekoBoldStyle.fontSize16.errorColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius16),
      ),
    );
  }

  //* Instead of `Theme.of(context).jeko` or `Theme.of(context).cerebriSans`
  //* Use .jeko or .cerebriSans instead
  TextTheme get jeko => textTheme;
  TextTheme get cerebriSansPro => primaryTextTheme;

  //* TextStyle Templates
  TextStyle get h3 =>
      jeko.fontSize40!.bold.textHeight(1.2).characterSpacing(-1.25);

  TextStyle get h4 =>
      jeko.fontSize32!.bold.textHeight(1.25).characterSpacing(-1);

  TextStyle get h5 =>
      jeko.fontSize24!.bold.textHeight(1.33).characterSpacing(-0.75);

  TextStyle get h6 =>
      jeko.fontSize20!.bold.textHeight(1.4).characterSpacing(-0.5);
}
