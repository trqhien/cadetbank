import 'package:shared_models/shared_models.dart';

class LoginResponse {
  final String token;
  final String refreshToken;
  final UserDetails user;

  LoginResponse({required this.token, required this.refreshToken, required this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json["token"] as String,
      refreshToken: json["refreshToken"] as String,
      user: UserDetails.fromJson(json["user"] as Map<String, dynamic>)
    );
  }
}