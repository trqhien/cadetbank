import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';

class LoggedInUserDataProvider extends InheritedWidget {
  final ValueNotifier<UserDetails?> userDetails;

  const LoggedInUserDataProvider({
    super.key,
    required super.child,
    required this.userDetails,
  });

  static LoggedInUserDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LoggedInUserDataProvider>();
  }

  @override
  bool updateShouldNotify(LoggedInUserDataProvider oldWidget) => userDetails != oldWidget.userDetails;
}