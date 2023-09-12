import 'package:cadetbank/src/network/users/models/user_details.dart';

class UpdateUserDetailsResponse {
  UpdateUserDetailsResponse({required this.updatedUser});

  final UserDetails updatedUser;

  factory UpdateUserDetailsResponse.fromJson(Map<String, dynamic> json) {
    return UpdateUserDetailsResponse(
      updatedUser: UserDetails.fromJson(json["updatedUser"] as Map<String, dynamic>)
    );
  }
}