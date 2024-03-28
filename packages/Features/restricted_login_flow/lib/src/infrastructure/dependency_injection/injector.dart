abstract class IInjector {
  T get<T extends Object>({String? instanceName});

  void initialize(String env);
}
