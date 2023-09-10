class ErrorResponse {
  final String reason;

  ErrorResponse({required this.reason});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(reason: json["reason"] as String);
}