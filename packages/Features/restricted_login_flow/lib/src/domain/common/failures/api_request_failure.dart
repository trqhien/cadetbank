import 'package:flutter/material.dart';

import 'failure.dart';

class ApiRequestFailure extends Failure {
  final dynamic data;
  final int statusCode;

  ApiRequestFailure(this.data, this.statusCode);

  @override
  String get message {
    return _extractErrorMessage();
  }

  int? get code {
    try {
      final c = statusCode;
      return c;
    } catch (e) {
      debugPrint('_Error extracting code from response: $data');
      return 500;
    }
  }

  String _extractErrorMessage() {
    String msg;
    if (data is Map) {
      msg = (data as Map)['message'].toString();
    } else {
      msg = 'Internal server error, please try again later.';
    }

    return msg;
  }
}
