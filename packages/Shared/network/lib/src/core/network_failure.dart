import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

///Sealed class containing failures related to the team feature
@freezed
class NetworkFailure with _$NetworkFailure {
  const NetworkFailure._();

  ///A failure representing 404 status code errors
  const factory NetworkFailure.notFound({required String message}) = _NotFound;

  ///A failure representing a successful call but no response data was received
  const factory NetworkFailure.nullResponse() = _NullResponse;

  ///A failure that occurs for any uncaught errors that may occur.
  const factory NetworkFailure.unexpected({required String message}) =
      _Unexpected;

  ///Returns the equivalent String message for the caption on our error UI
  String get errorCaption => 'An error occurred';
  String get errorMessage => 'An error occurred';
}
