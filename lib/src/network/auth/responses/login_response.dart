import 'package:cadetbank/src/network/users/models/user_details.dart';

class LoginReponse {
  final String token;
  final UserDetails user;

  LoginReponse({required this.token, required this.user});

  factory LoginReponse.fromJson(Map<String, dynamic> json) {
    return LoginReponse(
      token: json["token"] as String,
      user: UserDetails.fromJson(json["user"] as Map<String, dynamic>)
    );
  }
}