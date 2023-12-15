import 'package:di/di.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@injectableInit
class LocalStorageUseCasesDIConfiguration implements DIConfigurable {
  @override
  Future<void> initDependencies(GetIt getIt) {
    return getIt.init();
  }
}