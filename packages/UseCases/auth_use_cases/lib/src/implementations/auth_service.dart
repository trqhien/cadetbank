import 'package:auth_use_cases/src/interfaces/i_auth_service.dart';
import 'package:auth_use_cases/src/responses/login_response.dart';
import 'package:auth_use_cases/src/responses/logout_response.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable(as: IAuthService)
class AuthService implements IAuthService {
  AuthService(@Named("dio_auth_use_cases") this.dio);

  final Dio dio;

  @override
  Future<ApiResponse<LoginResponse>> login({
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

      return ApiResponse.fromJson(response.data!, LoginResponse.fromJson);
    } catch (err) {
      throw NetworkFailure(err.toString(), error: err);
    }
  }

  @override
  Future<ApiResponse<LogoutResponse>> logout() async {
    try {
      final response = await dio.post<Map<String, dynamic>>("/auth/logout");
      return ApiResponse.fromJson(response.data!, LogoutResponse.fromJson);
    } catch (err) {
      throw NetworkFailure(err.toString(), error: err);
    }
  }
}