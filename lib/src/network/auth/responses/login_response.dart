class LoginReponse {
  final String token;

  LoginReponse({required this.token});

  @override
  factory LoginReponse.fromJson(Map<String, dynamic> json) {
    return LoginReponse(
      token: json["token"] as String,
    );
  }
}