
import 'package:get_it/get_it.dart';

GetIt get _getit => GetIt.instance;

T resolve<T extends Object>({String? instanceName}) {
  return _getit<T>();
}

// T resolveAsync<T extends Object>({String? instanceName}) async {
//   return await _getit.getAsync<T>();
// }