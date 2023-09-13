import 'package:flutter/material.dart';

class DemoTopicInherited extends InheritedWidget {
  final StateManagement stateManagement;

  const DemoTopicInherited({
    super.key,
    required super.child,
    required this.stateManagement,
  });

  static DemoTopicInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DemoTopicInherited>();
  }

  @override
  bool updateShouldNotify(DemoTopicInherited oldWidget) => stateManagement != oldWidget.stateManagement;
}

enum StateManagement {
  inherited,
  provider,
}