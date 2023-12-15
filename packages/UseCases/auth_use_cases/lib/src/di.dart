import 'package:di/di.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@injectableInit
class AuthUseCasesDIConfiguration implements DIConfigurable {
  @override
  Future<void> initDependencies(GetIt getIt) {
    getIt.init();
    return Future(() {});
  }
}