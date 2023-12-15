import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:users_use_cases/src/interfaces/i_users_service.dart';
import 'package:users_use_cases/src/responses/update_user_details_response.dart';

@Injectable(as: IUsersService)
class UsersService implements IUsersService {
  UsersService(@Named("dio_users_use_cases") this._dio);

  final Dio _dio;

  @override
  Future<ApiResponse<UpdateUserDetailsResponse>> updateUsername({required String username}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      "/users/update",
      data: {
        "username": username,
      }
    );

    return ApiResponse.fromJson(res.data!, UpdateUserDetailsResponse.fromJson);
  }
}