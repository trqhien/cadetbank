// coverage:ignore-file
import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  ///Figma Primary Black color
  static const Color primaryBlackColor = Color.fromRGBO(0, 0, 0, 1);

  ///Figma Primary Black color 60% opacity
  static const Color primaryBlack60Color = Color.fromRGBO(0, 0, 0, 0.6);

  ///Figma Primary Black color 72% opacity
  static const Color primaryBlack72Color = Color.fromRGBO(0, 0, 0, 0.72);

  ///Figma Primary White color
  static const Color primaryWhiteColor = Color.fromRGBO(255, 255, 255, 1);

  ///Figma Primary White color 25% opacity
  static const Color primaryWhite25Color = Color.fromRGBO(255, 255, 255, 0.25);

  ///Figma Primary White color 60% opacity
  static const Color primaryWhite60Color = Color.fromRGBO(255, 255, 255, 0.6);

  ///Figma Primary White color 80% opacity
  static const Color primaryWhite80Color = Color.fromRGBO(255, 255, 255, 0.8);

  ///Figma Primary Green color
  static const Color primaryGreenColor = Color.fromRGBO(0, 166, 81, 1);

  ///Figma Tertiary Dark Green color
  static const Color tertiaryGreenColor = Color.fromRGBO(0, 103, 47, 1);

  ///Figma Mint Green color
  static const Color mintGreen = Color.fromRGBO(47, 242, 158, 1);

  ///Figma Attention color
  static const Color attention = Color.fromRGBO(255, 218, 85, 1);

  ///Figma blue color
  static const Color blue = Color.fromRGBO(169, 204, 255, 1);

  ///Figma dark blue color
  static const Color darkBlue = Color.fromRGBO(63, 59, 160, 1);

  ///Figma pink color
  static const Color pink = Color.fromRGBO(255, 175, 246, 1);

  ///Figma pink with 25% opacity
  static const Color pink25Color = Color.fromRGBO(255, 175, 246, 0.25);

  ///Figma Light Green color
  static const Color secondaryGreenColor = Color.fromRGBO(233, 250, 236, 1);

  ///Figma Dark Mode Green color
  static const Color darkModeGreenColor = Color.fromRGBO(40, 196, 128, 1);

  ///Figma Dark Mode Green color 40% opacity
  static const Color darkModeGreen40Color = Color.fromRGBO(0, 166, 81, 0.4);

  ///Figma Dark Mode Grey color 40% opacity
  static const Color darkModeGrey40Color = Color.fromRGBO(41, 42, 44, 0.4);

  ///Figma Light Green color 8% opacity
  static const Color lightGreen8Color = Color.fromRGBO(29, 196, 57, 0.08);

  ///Figma Light Green color 15% opacity
  static const Color lightGreen15Color = Color.fromRGBO(29, 196, 57, 0.15);

  ///Figma Light Purple color 25% opacity
  static const Color lightPurple25Color = Color.fromRGBO(213, 159, 255, 0.25);

  ///Figma Grey 11 color
  static const Color grey11Color = Color.fromRGBO(11, 11, 11, 1);

  ///Figma Grey 10 color
  static const Color grey10Color = Color.fromRGBO(22, 22, 23, 1);

  ///Figma Grey 9 color
  static const Color grey9Color = Color.fromRGBO(32, 33, 34, 1);

  ///Figma Grey 8 color
  static const Color grey8Color = Color.fromRGBO(42, 43, 46, 1);

  ///Figma Grey 7 color
  static const Color grey7Color = Color.fromRGBO(53, 54, 56, 1);

  ///Figma Grey 6 color
  static const Color grey6Color = Color.fromRGBO(85, 86, 89, 1);

  ///Figma Grey 5 color
  static const Color grey5Color = Color.fromRGBO(128, 128, 128, 1);

  ///Figma Grey 4 color
  static const Color grey4Color = Color.fromRGBO(177, 179, 181, 1);

  ///Figma Grey 3 color
  static const Color grey3Color = Color.fromRGBO(236, 237, 239, 1);

  ///Figma Grey 2 color
  static const Color grey2Color = Color.fromRGBO(244, 245, 245, 1);

  ///Figma Grey 1 color
  static const Color grey1Color = Color.fromRGBO(249, 249, 250, 1);

  ///Figma Grey 1 color at 70%
  static const Color grey1Color70 = Color.fromRGBO(249, 249, 250, 0.7);

  ///Figma purple color
  static const Color purpleColor = Color.fromRGBO(73, 41, 170, 1);

  ///Figma purple color at 70%
  static const Color purpleColor70 = Color.fromRGBO(73, 41, 170, 0.7);

  ///Figma purple color
  static const Color lightPurpleColor = Color.fromRGBO(110, 79, 224, 1);

  //Figma Light Purple 2
  static const Color lightPurple2Color = Color.fromRGBO(109, 105, 207, 1);

  ///Figma error color
  static const Color errorColor = Color.fromRGBO(252, 115, 122, 1.0);

  ///Figma opaque snackbar error color
  static const Color snackbarErrorColor = Color.fromRGBO(255, 230, 231, 1.0);

  ///Figma Success Light
  static const Color successLight = Color.fromRGBO(221, 246, 225, 1);

  ///Figma Success Dark
  static const Color successDark = Color.fromRGBO(32, 57, 37, 1);

  ///Figma opaque snackbar dark mode error color
  static const Color darkModeSnackbarErrorColor =
      Color.fromRGBO(98, 55, 58, 1.0);

  ///No Figma equivalent - used as disabled color for info tile and shadow colors
  static const Color shadowGray35Color = Color.fromRGBO(214, 214, 214, 0.35);

  ///No Figma equivalent - used as border color in goal transfer account tile
  static const Color shadowGray60Color = Color.fromRGBO(214, 214, 214, 0.60);

  ///No Figma equivalent - used as shadow colors for cards
  static const Color cardShadowColor = Color.fromRGBO(0, 0, 0, 0.25);

  ///No Figma equivalent - used as shadow colors for cards
  static const Color secondaryCardShadowColor = Color.fromRGBO(0, 0, 0, 0.07);

  static Gradient customGradient(Color firstColor, Color secondColor) {
    return LinearGradient(
      colors: [firstColor, secondColor],
      stops: const [0, 1],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  static const gradientWhiteFade = LinearGradient(
    colors: [Colors.white, Colors.transparent],
    stops: [0, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const gradientBlackFade = LinearGradient(
    colors: [Colors.black, Colors.transparent],
    stops: [0, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const orangeToPurpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromRGBO(255, 156, 108, 1),
      Color.fromRGBO(209, 90, 192, 1),
      Color.fromRGBO(115, 39, 241, 1),
    ],
  );

  static const yellowToOrangeGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromRGBO(255, 218, 85, 1),
      Color.fromRGBO(255, 89, 11, 1),
    ],
  );

  static Gradient solidColorGradient(Color color) => LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [color, color],
      );
}
