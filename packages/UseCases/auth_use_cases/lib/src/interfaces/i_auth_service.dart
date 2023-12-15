import 'package:auth_use_cases/src/responses/login_response.dart';
import 'package:auth_use_cases/src/responses/logout_response.dart';
import 'package:network/network.dart';

abstract class IAuthService {
  Future<ApiResponse<LoginResponse>> login({
    required String email,
    required String password
  });

  Future<ApiResponse<LogoutResponse>> logout();
}