
import 'package:cadetbank/src/features/navigation/pages.dart';
import 'package:flutter/material.dart';

MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
  final routeName = settings.name!;

  switch (routeName) {
    case "/red":
      return MaterialPageRoute(
        builder: (context) => const RedPage(),
        settings: settings,
      );
    case "/purple":
      return MaterialPageRoute(
        builder: (context) => const PurplePage(),
        settings: settings,
      );
    case "/pink":
      return MaterialPageRoute(
        builder: (context) => const PinkPage(),
        settings: settings,
      );
    case "/orange":
      return MaterialPageRoute(
        builder: (context) => const OrangePage(),
        settings: settings,
      );
    case "/yellow":
      return MaterialPageRoute(
        builder: (context) => const YellowPage(),
        settings: settings,
      );
    case "/green":
      return MaterialPageRoute(
        builder: (context) => const GreenPage(),
        settings: settings,
      );
    case "/blue":
      return MaterialPageRoute(
        builder: (context) => const BluePage(),
        settings: settings,
      );
    default:
      return null;
  }
}
