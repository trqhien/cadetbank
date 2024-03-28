
import 'package:auth_use_cases/auth_use_cases.dart';
import 'package:di/di.dart';
import 'package:di_containers/src/dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage_use_cases/local_storage_use_cases.dart';
import 'package:paymaya_dev_login/paymaya_dev_login.dart';
import 'package:shared_states/shared_states.dart';
import 'package:users_use_cases/users_use_cases.dart';

final getIt = GetIt.instance;

final List<DIConfigurable> _diConfiguratables = [
  SharedStatesDIConfiguration(),
  AuthUseCasesDIConfiguration(),
  LocalStorageUseCasesDIConfiguration(),
  UsersUseCasesDIConfiguration(),
  DevLogInFeatureDIConfiguration(),
];

@injectableInit
Future<void> configureDependencies() {
  getIt.init();
  return Future.wait(
    _diConfiguratables.map((c) => c.initDependencies(getIt))
  );
}

