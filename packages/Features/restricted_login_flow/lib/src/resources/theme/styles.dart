// coverage:ignore-file

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';
//* Ignoring from test coverage since the styles from the text widgets would test the properties below

class Styles {
  Styles._();

  static ThemeData get lightModeTheme => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: jeko,
        scaffoldBackgroundColor: CustomColors.primaryWhiteColor,
        tabBarTheme: const TabBarTheme(
          indicator: BoxDecoration(),
          labelPadding: EdgeInsets.symmetric(horizontal: Dimens.spacing4),
          labelColor: CustomColors.primaryBlackColor,
          unselectedLabelColor: CustomColors.grey5Color,
        ),
        textTheme: TextTheme(
          displayLarge: _jekoStyle.fontSize40.primaryBlackColor,
          displayMedium: _jekoStyle.fontSize36.primaryBlackColor,
          displaySmall: _jekoStyle.fontSize32.primaryBlackColor,
          headlineMedium: _jekoStyle.fontSize28.primaryBlackColor,
          headlineSmall: _jekoStyle.fontSize24.primaryBlackColor,
          titleLarge: _jekoStyle.fontSize20.primaryBlackColor,
          titleMedium: _jekoStyle.fontSize18.primaryBlackColor,
          titleSmall: _jekoStyle.fontSize16.primaryBlackColor,
          bodyLarge: _jekoStyle.fontSize14.primaryBlackColor,
          bodyMedium: _jekoStyle.fontSize12.primaryBlackColor,
        ),
        primaryTextTheme: TextTheme(
          displayLarge: _cerebriSansProStyle.fontSize40.primaryBlackColor,
          displayMedium: _cerebriSansProStyle.fontSize36.primaryBlackColor,
          displaySmall: _cerebriSansProStyle.fontSize32.primaryBlackColor,
          headlineMedium: _cerebriSansProStyle.fontSize28.primaryBlackColor,
          headlineSmall: _cerebriSansProStyle.fontSize24.primaryBlackColor,
          titleLarge: _cerebriSansProStyle.fontSize20.primaryBlackColor,
          titleMedium: _cerebriSansProStyle.fontSize18.primaryBlackColor,
          titleSmall: _cerebriSansProStyle.fontSize16.primaryBlackColor,
          bodyLarge: _cerebriSansProStyle.fontSize14.primaryBlackColor,
          bodyMedium: _cerebriSansProStyle.fontSize12.primaryBlackColor,
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: CustomColors.grey3Color,
            width: 1,
          ),
        ),
        iconTheme: const IconThemeData(color: null),
        cardTheme: CardTheme(
          elevation: 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: CustomColors.grey3Color),
            borderRadius: BorderRadius.circular(Dimens.borderRadius16),
          ),
        ),
        appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: CustomColors.primaryBlackColor),
          centerTitle: true,
          color: CustomColors.primaryWhite80Color,
          titleTextStyle: _jekoStyle.bold.fontSize16.primaryBlackColor,
          elevation: 0.0,
        ),
        dividerTheme: const DividerThemeData(
          color: CustomColors.grey3Color,
          thickness: Dimens.dividerThickness,
        ),
      );

  static ThemeData get darkModeTheme => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        fontFamily: jeko,
        scaffoldBackgroundColor: CustomColors.grey9Color,
        tabBarTheme: const TabBarTheme(
          indicator: BoxDecoration(),
          labelPadding: EdgeInsets.symmetric(horizontal: Dimens.spacing4),
        ),
        checkboxTheme: const CheckboxThemeData(
          side: BorderSide(
            color: CustomColors.grey5Color,
            width: 1,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: _jekoStyle.fontSize40.primaryWhiteColor,
          displayMedium: _jekoStyle.fontSize36.primaryWhiteColor,
          displaySmall: _jekoStyle.fontSize32.primaryWhiteColor,
          headlineMedium: _jekoStyle.fontSize28.primaryWhiteColor,
          headlineSmall: _jekoStyle.fontSize24.primaryWhiteColor,
          titleLarge: _jekoStyle.fontSize20.primaryWhiteColor,
          titleMedium: _jekoStyle.fontSize18.primaryWhiteColor,
          titleSmall: _jekoStyle.fontSize16.primaryWhiteColor,
          bodyLarge: _jekoStyle.fontSize14.primaryWhiteColor,
          bodyMedium: _jekoStyle.fontSize12.primaryWhiteColor,
        ),
        iconTheme: const IconThemeData(
          color: CustomColors.primaryWhiteColor,
        ),
        inputDecorationTheme:
            const InputDecorationTheme(fillColor: CustomColors.grey10Color),
        cardTheme: CardTheme(
          elevation: 0,
          margin: EdgeInsets.zero,
          color: CustomColors.grey8Color,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: CustomColors.grey8Color,
            ),
            borderRadius: BorderRadius.circular(Dimens.borderRadius16),
          ),
        ),
        primaryTextTheme: TextTheme(
          displayLarge: _cerebriSansProStyle.fontSize40.primaryWhiteColor,
          displayMedium: _cerebriSansProStyle.fontSize36.primaryWhiteColor,
          displaySmall: _cerebriSansProStyle.fontSize32.primaryWhiteColor,
          headlineMedium: _cerebriSansProStyle.fontSize28.primaryWhiteColor,
          headlineSmall: _cerebriSansProStyle.fontSize24.primaryWhiteColor,
          titleLarge: _cerebriSansProStyle.fontSize20.primaryWhiteColor,
          titleMedium: _cerebriSansProStyle.fontSize18.primaryWhiteColor,
          titleSmall: _cerebriSansProStyle.fontSize16.primaryWhiteColor,
          bodyLarge: _cerebriSansProStyle.fontSize14.primaryWhiteColor,
          bodyMedium: _cerebriSansProStyle.fontSize12.primaryWhiteColor,
        ),
        appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: CustomColors.primaryWhiteColor),
          centerTitle: true,
          color: CustomColors.grey9Color,
          titleTextStyle: _jekoStyle.fontSize16.bold.primaryWhiteColor,
          elevation: 0.0,
        ),
        dividerTheme: const DividerThemeData(
          color: CustomColors.grey8Color,
          thickness: Dimens.dividerThickness,
        ),
      );

  //text sizes
  static const textSize6 = 6.0;
  static const textSize8 = 8.0;
  static const textSize10 = 10.0;
  static const textSize12 = 12.0;
  static const textSize14 = 14.0;
  static const textSize16 = 16.0;
  static const textSize18 = 18.0;
  static const textSize20 = 20.0;
  static const textSize22 = 22.0;
  static const textSize24 = 24.0;
  static const textSize28 = 28.0;
  static const textSize32 = 32.0;
  static const textSize36 = 36.0;
  static const textSize40 = 40.0;
  static const textSize48 = 48.0;
  static const textSize60 = 60.0;

  //font families
  static const jeko = 'Jeko';
  static const cerebriSansPro = 'CerebriSansPro';
  static const notoEmoji = 'NotoColorEmoji';

  //auto size text groups
  static AutoSizeGroup homeScreenAccountDetailsTileText = AutoSizeGroup();

  //* Base text styles
  static const _jekoStyle = TextStyle(
    fontFamily: jeko,
    package: Strings.packageName,
    fontWeight: FontWeight.normal,
  );

  static const _cerebriSansProStyle = TextStyle(
    fontFamily: cerebriSansPro,
    package: Strings.packageName,
  );

  //shadows
  static const cardShadow = BoxShadow(
    color: CustomColors.secondaryCardShadowColor,
    spreadRadius: 1.0,
    blurRadius: 34.0,
    offset: Offset(0.0, 10.0),
  );
  static const selectArrowButtonShadow = BoxShadow(
    color: CustomColors.shadowGray35Color,
    spreadRadius: 1.0,
    blurRadius: 20.0,
    offset: Offset(2.0, 7.0),
  );

  //input borders

  static OutlineInputBorder transparentInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}

extension CustomMayaTextStyles on TextStyle {
  //* Colors and Font Sizes
  TextStyle get primaryBlackColor =>
      copyWith(color: CustomColors.primaryBlackColor);
  TextStyle get primaryGreenColor =>
      copyWith(color: CustomColors.primaryGreenColor);
  TextStyle get primaryWhiteColor =>
      copyWith(color: CustomColors.primaryWhiteColor);
  TextStyle get white60Color =>
      copyWith(color: CustomColors.primaryWhite60Color);
  TextStyle get black60Color =>
      copyWith(color: CustomColors.primaryBlack60Color);
  TextStyle get black72Color =>
      copyWith(color: CustomColors.primaryBlack72Color);
  TextStyle get grey5Color => copyWith(color: CustomColors.grey5Color);
  TextStyle get grey4Color => copyWith(color: CustomColors.grey4Color);
  TextStyle get grey6Color => copyWith(color: CustomColors.grey6Color);
  TextStyle get grey7Color => copyWith(color: CustomColors.grey7Color);
  TextStyle get grey11Color => copyWith(color: CustomColors.grey11Color);
  TextStyle get errorColor => copyWith(color: CustomColors.errorColor);
  TextStyle get purpleColor => copyWith(color: CustomColors.purpleColor);
  TextStyle get darkModeGreenColor =>
      copyWith(color: CustomColors.darkModeGreenColor);

  //* Font sizes
  TextStyle get fontSize6 => copyWith(fontSize: Styles.textSize6);
  TextStyle get fontSize8 => copyWith(fontSize: Styles.textSize8);
  TextStyle get fontSize10 => copyWith(fontSize: Styles.textSize10);
  TextStyle get fontSize12 => copyWith(fontSize: Styles.textSize12);
  TextStyle get fontSize14 => copyWith(fontSize: Styles.textSize14);
  TextStyle get fontSize16 => copyWith(fontSize: Styles.textSize16);
  TextStyle get fontSize18 => copyWith(fontSize: Styles.textSize18);
  TextStyle get fontSize20 => copyWith(fontSize: Styles.textSize20);
  TextStyle get fontSize22 => copyWith(fontSize: Styles.textSize22);
  TextStyle get fontSize24 => copyWith(fontSize: Styles.textSize24);
  TextStyle get fontSize28 => copyWith(fontSize: Styles.textSize28);
  TextStyle get fontSize32 => copyWith(fontSize: Styles.textSize32);
  TextStyle get fontSize36 => copyWith(fontSize: Styles.textSize36);
  TextStyle get fontSize40 => copyWith(fontSize: Styles.textSize40);
  TextStyle get fontSize48 => copyWith(fontSize: Styles.textSize48);
  TextStyle get fontSize60 => copyWith(fontSize: Styles.textSize60);

  //* Font Weight
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get normal => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  //* Additional Sizing
  TextStyle textHeight(double height) => copyWith(
        height: height,
        leadingDistribution: TextLeadingDistribution.even,
      );
  TextStyle get centeredVerticalAlign =>
      copyWith(leadingDistribution: TextLeadingDistribution.even);
  TextStyle textWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle characterSpacing(double spacing) =>
      copyWith(letterSpacing: spacing);

  ///Applies a different font family for Android to render emoji symbols instead of text
  ///
  ///Set to null for iOS to prevent the emoji from changing. Tested on both 2.5.3 and 3.7.3 versions of Flutter
  TextStyle get emojiFont => copyWith(
        fontFamily: defaultTargetPlatform == TargetPlatform.android
            ? Styles.notoEmoji
            : null,
        fontWeight: FontWeight.normal,
      );
}

extension TextThemeExtensions on TextTheme {
  TextStyle? get fontSize40 => displayLarge;
  TextStyle? get fontSize36 => displayMedium;
  TextStyle? get fontSize32 => displaySmall;
  TextStyle? get fontSize28 => headlineMedium;
  TextStyle? get fontSize24 => headlineSmall;
  TextStyle? get fontSize20 => titleLarge;
  TextStyle? get fontSize18 => titleMedium;
  TextStyle? get fontSize16 => titleSmall;
  TextStyle? get fontSize14 => bodyLarge;
  TextStyle? get fontSize12 => bodyMedium;
}
