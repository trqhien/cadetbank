import 'package:cadetbank/src/network/error_response.dart';

class ApiResponse<M> {
  final int code;
  final M? response;
  final ErrorResponse? error;

  bool get isSuccessful => code == 1
    && response != null
    && error == null;

  const ApiResponse({
    required this.code, 
    this.response, 
    this.error
  }) : assert(response != null || error != null),
    assert(code == 0 || code == 1);

  factory ApiResponse.fromJson(
    Map<String, dynamic> json, 
    M Function(Map<String, dynamic>) onSuccess
  ) {
    final _code = json["code"] as int;
    final _response = json["response"] as Map<String, dynamic>?;
    final _error = json["error"] as Map<String, dynamic>?;

    if (_code == 1 && _response != null) {
      return ApiResponse._fromJsonAsResponse(_code, onSuccess(_response));
    } else if (_code == 0 && _error != null) {
      return ApiResponse._fromJsonAsError(_code, ErrorResponse.fromJson(_error));
    }

    throw Exception();
  }

  factory ApiResponse._fromJsonAsResponse(int code, M res) {
    assert(code == 1, "Successful response must have code = 1");
    return ApiResponse(code: code, response: res);
  }

  factory ApiResponse._fromJsonAsError(int code, ErrorResponse error) {
    assert(code == 0, "Error reponse must have code = 0");
    return ApiResponse(code: code, error: error);
  }
}