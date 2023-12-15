
import 'package:auth_use_cases/auth_use_cases.dart';
import 'package:di/di.dart';
import 'package:local_storage_use_cases/local_storage_use_cases.dart';
import 'package:shared_states/shared_states.dart';
import 'package:users_use_cases/users_use_cases.dart';

final getIt = GetIt.instance;

final List<DIConfigurable> _diConfiguratables = [
  SharedStatesDIConfiguration(),
  AuthUseCasesDIConfiguration(),
  LocalStorageUseCasesDIConfiguration(),
  UsersUseCasesDIConfiguration(),
];

Future<void> configureDependencies() {
  return Future.wait(
    _diConfiguratables.map((c) => c.initDependencies(getIt))
  );
}