import 'package:network/network.dart';
import 'package:users_use_cases/src/responses/update_user_details_response.dart';

abstract class IUsersService {
  Future<ApiResponse<UpdateUserDetailsResponse>> updateUsername({required String username});
}