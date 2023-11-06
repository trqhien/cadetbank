
import 'package:cadetbank/src/features/navigation/pages.dart';
import 'package:flutter/material.dart';

MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
  final routeName = settings.name!;

  switch (routeName) {
    case "/red":
      return MaterialPageRoute(
        builder: (context) => const RedPage()
      );
    case "/purple":
      return MaterialPageRoute(
        builder: (context) => const PurplePage()
      );
    case "/pink":
      return MaterialPageRoute(
        builder: (context) => const PinkPage()
      );
    case "/orange":
      return MaterialPageRoute(
        builder: (context) => const OrangePage()
      );
    case "/yellow":
      return MaterialPageRoute(
        builder: (context) => const YellowPage()
      );
    case "/green":
      return MaterialPageRoute(
        builder: (context) => const GreenPage()
      );
    case "/blue":
      return MaterialPageRoute(
        builder: (context) => const BluePage()
      );
    default:
      return null;
  }
}
