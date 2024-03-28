
import 'package:flutter/material.dart';
import 'package:mayabank_app/src/core/styling/colors.dart';
import 'package:mayabank_app/src/core/styling/text_styles.dart';

extension CustomTheme on ThemeData {
  static ThemeData maya() => ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.green,
    fontFamily: "Jeko",
    scaffoldBackgroundColor: CustomColors.primaryWhiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: CustomColors.primaryWhiteColor,
      elevation: 0,
      titleSpacing: 0,
    ),
    textTheme: TextTheme(
      displayLarge: CustomStyle.jekoStyle.copyWith(fontSize: 40, color: CustomColors.primaryBlackColor),
      displayMedium: CustomStyle.jekoStyle.copyWith(fontSize: 36, color: CustomColors.primaryBlackColor),
      displaySmall: CustomStyle.jekoStyle.copyWith(fontSize: 32, color: CustomColors.primaryBlackColor),
      headlineMedium: CustomStyle.jekoStyle.copyWith(fontSize: 28, color: CustomColors.primaryBlackColor),
      headlineSmall: CustomStyle.jekoStyle.copyWith(fontSize: 24, color: CustomColors.primaryBlackColor),
      titleLarge: CustomStyle.jekoStyle.copyWith(fontSize: 20, color: CustomColors.primaryBlackColor),
      titleMedium: CustomStyle.jekoStyle.copyWith(fontSize: 18, color: CustomColors.primaryBlackColor),
      titleSmall: CustomStyle.jekoStyle.copyWith(fontSize: 16, color: CustomColors.primaryBlackColor),
      bodyLarge: CustomStyle.jekoStyle.copyWith(fontSize: 14, color: CustomColors.primaryBlackColor),
      bodyMedium: CustomStyle.jekoStyle.copyWith(fontSize: 12, color: CustomColors.primaryBlackColor),
    ),
    primaryTextTheme: TextTheme(
      displayLarge: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 40, color: CustomColors.primaryBlackColor),
      displayMedium: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 36, color: CustomColors.primaryBlackColor),
      displaySmall: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 32, color: CustomColors.primaryBlackColor),
      headlineMedium: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 28, color: CustomColors.primaryBlackColor),
      headlineSmall: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 24, color: CustomColors.primaryBlackColor),
      titleLarge: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 20, color: CustomColors.primaryBlackColor),
      titleMedium: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 18, color: CustomColors.primaryBlackColor),
      titleSmall: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 16, color: CustomColors.primaryBlackColor),
      bodyLarge: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 14, color: CustomColors.primaryBlackColor),
      bodyMedium: CustomStyle.cerebriSansProStyle.copyWith(fontSize: 12, color: CustomColors.primaryBlackColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(0),
      labelStyle: CustomStyle.jekoStyle
        .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
      hintStyle: CustomStyle.jekoStyle
        .copyWith(fontSize: 16, color: CustomColors.grey4Color),
      prefixStyle: CustomStyle.jekoStyle
        .copyWith(fontSize: 16, fontWeight: FontWeight.w600, height: 1),
      fillColor: CustomColors.grey1Color,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
      focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
      enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
      errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
      focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
      errorStyle: CustomStyle.jekoStyle.copyWith(fontSize: 10, color: CustomColors.errorColor)
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.pressed)) return CustomColors.primaryGreenColor.withAlpha(75);
          if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused)) return CustomColors.primaryGreenColor.withAlpha(75);
          if (states.contains(MaterialState.disabled)) return CustomColors.grey10Color.withAlpha(75);
          return CustomColors.primaryGreenColor;
        }),
        foregroundColor: const MaterialStatePropertyAll(CustomColors.primaryWhiteColor),
        fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 56)),
        textStyle: MaterialStatePropertyAll(CustomStyle.jekoBoldStyle.copyWith(fontSize: 16)),
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        )
      ),
    ),
  );
}