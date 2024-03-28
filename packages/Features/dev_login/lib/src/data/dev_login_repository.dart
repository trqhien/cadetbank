import 'package:paymaya_dev_login/src/commons/result.dart';
import 'package:paymaya_dev_login/src/data/dev_login_rest_client.dart';
import 'package:paymaya_dev_login/src/data/model/dev_login_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class DevLoginRepository {
  final DevLoginRestClient _restClient;

  DevLoginRepository(this._restClient);

  Future<Result<String>> getSessionToken(DevLoginModel devLoginModel) async {
    return await _restClient.getSessionToken(devLoginModel);
  }
}
