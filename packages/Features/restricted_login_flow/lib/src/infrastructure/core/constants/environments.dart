import 'package:injectable/injectable.dart';

class Environments {
  const Environments._();

  //* Environments
  static const String integrationEnv = 'integration';

  static const List<String> prodEnvironments = [
    integrationEnv,
    Environment.prod
  ];
}
