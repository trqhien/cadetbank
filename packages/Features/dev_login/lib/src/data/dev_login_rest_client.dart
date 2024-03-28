import 'package:network/network.dart';
import 'package:paymaya_dev_login/src/commons/result.dart';
import 'package:paymaya_dev_login/src/data/model/dev_login_model.dart';
import 'package:paymaya_dev_login/src/data/rest_client_catcher.dart';
import 'package:injectable/injectable.dart';

@injectable
class DevLoginRestClient {
  static const String _sessionToken = '/v1/sessions';
  final Dio _dio;

  DevLoginRestClient(@Named("api-test.paymaya.com") this._dio);

  Future<Result<String>> getSessionToken(DevLoginModel devLoginModel) async {
    final result = await RestClientCatcher.request<String>(
      onRequest: () async {
        final response = await _dio.post<Map<String, dynamic>>(
          _sessionToken,
          data: devLoginModel.toJson(),
        );

        final data = response.data;

        if (data == null || data['token'] == null) {
          return Result.failure(AppFailure.nullResponse());
        } else {
          return Result.success(data['token'] as String);
        }
      },
    );
    return result;
  }
}
