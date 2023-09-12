import 'package:cadetbank/src/network/users/models/user_details.dart';

class GetUserDetailsResponse {
  GetUserDetailsResponse({required this.user});

  final UserDetails user;

  factory GetUserDetailsResponse.fromJson(Map<String, dynamic> json) {
    return GetUserDetailsResponse(
      user: UserDetails.fromJson(json["user"] as Map<String, dynamic>)
    );
  }
}