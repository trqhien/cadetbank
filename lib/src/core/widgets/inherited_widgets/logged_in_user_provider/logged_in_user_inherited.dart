import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';

class LoggedInUserDataInherited extends InheritedWidget {
  final ValueNotifier<UserDetails?> userDetails;

  const LoggedInUserDataInherited({
    super.key,
    required super.child,
    required this.userDetails,
  });

  static LoggedInUserDataInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LoggedInUserDataInherited>();
  }

  @override
  bool updateShouldNotify(LoggedInUserDataInherited oldWidget) => userDetails != oldWidget.userDetails;
}