import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/auth/responses/login_response.dart';
import 'package:cadetbank/src/network/network_failure.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  AuthRepository(this.dio);

  final Dio dio;

  Future<ApiResponse<LoginReponse>> login({
    required String email,
    required String password
  }) async {
    try {
      final response = await dio.post<Map<String, dynamic>>(
        "/auth/login",
        data: {
          "email": email,
          "password": password,
        }
      );

      return ApiResponse.fromJson(response.data!, LoginReponse.fromJson);
    } catch (err) {
      throw NetworkFailure(err.toString(), error: err);
    }
  }
}
