import 'package:cadetbank/src/app/shared_data/register_data_inherited.dart';
import 'package:flutter/material.dart';

// snippet: cadetin
class RegisterDataInherited extends InheritedWidget {
  final RegisterData registerData;

  const RegisterDataInherited({super.key, required super.child, required this.registerData});

  static RegisterDataInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RegisterDataInherited>();
  }

  @override
  bool updateShouldNotify(RegisterDataInherited oldWidget) => true;
}
