import 'package:get_it/get_it.dart';

abstract class DIConfigurable {
  Future<void> initDependencies(GetIt getIt);
}