import 'package:cadetbank/src/network/users/models/user_details.dart';
import 'package:flutter/material.dart';

// snippet:cadetin
class LoggedInUserDataInherited extends InheritedWidget {
  /// Use `ValueNotifier(null)` for a default value
  final ValueNotifier<UserDetails?> userDetails;

  const LoggedInUserDataInherited({super.key, required super.child, required this.userDetails});

  static LoggedInUserDataInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LoggedInUserDataInherited>();
  }

  @override
  bool updateShouldNotify(LoggedInUserDataInherited oldWidget) => true;
}

// snippet:cadetvaluenotifier
