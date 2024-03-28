import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/injector.dart';
import 'get_it_injector_impl.config.dart';

final GetIt serviceLocator = GetIt.instance;

final Injector injector = Injector.instance;

class Injector implements IInjector {
  static final Injector _instance = Injector._internal();
  static Injector get instance => _instance;

  factory Injector() {
    return _instance;
  }

  Injector._internal();

  @override
  T get<T extends Object>({String? instanceName}) {
    return serviceLocator.get<T>();
  }

  @override
  void initialize(String env) {
    initDependencyInjection(env);
  }
}

///Configures [GetIt] to setup all dependencies as needed.
@injectableInit
void initDependencyInjection(String env) {
  $initGetIt(
    serviceLocator,
    environment: env,
  );
}

const List<String> prodEnvironments = ['integration', Environment.prod];
