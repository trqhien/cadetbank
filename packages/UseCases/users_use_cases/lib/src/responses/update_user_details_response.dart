import 'package:shared_models/shared_models.dart';

class UpdateUserDetailsResponse {
  UpdateUserDetailsResponse({required this.updatedUser});

  final UserDetails updatedUser;

  factory UpdateUserDetailsResponse.fromJson(Map<String, dynamic> json) {
    return UpdateUserDetailsResponse(
      updatedUser: UserDetails.fromJson(json["updatedUser"] as Map<String, dynamic>)
    );
  }
}