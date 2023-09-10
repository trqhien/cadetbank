
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_mock_data.dart';
import 'package:flutter/material.dart';

class RegisterDataProvider extends InheritedWidget {
  final RegisterData registerData;
  final debug = false;
  final RegisterMockData? registerMock;

  const RegisterDataProvider({
    super.key,
    required super.child,
    required this.registerData,
    this.registerMock
  });

  static RegisterDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RegisterDataProvider>();
  }

  @override
  bool updateShouldNotify(RegisterDataProvider oldWidget) => true;
}