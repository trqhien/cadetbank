import 'package:di/di.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_states/src/di.config.dart';

@injectableInit
class SharedStatesDIConfiguration implements DIConfigurable {
  @override
  Future<void> initDependencies(GetIt getIt) {
    getIt.init();
    return Future(() {});
  }

}