import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/src/core/network_failure.dart';
import 'package:network/src/core/sdk_failure.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const AppFailure._();

  ///A failure resulting from Network calls through our RESTful API clients
  const factory AppFailure.networkFailure(NetworkFailure networkFailure) =
      _NetworkFailure;

  ///A failure resulting from exceptions or errors from the Flutter SDK side
  const factory AppFailure.sdkFailure(SdkFailure sdkFailure) = _SdkFailure;

  ///Returns trus if the [AppFailure] contains an [NetworkFailure]
  bool get isNetworkFailure => maybeWhen(
        networkFailure: (_) => true,
        orElse: () => false,
      );

  ///Returns trus if the [AppFailure] contains an [SdkFailure]
  bool get isSdkFailure => maybeWhen(
        sdkFailure: (_) => true,
        orElse: () => false,
      );

  ///Returns the caption of the specific failure this contains
  String get errorCaption => when(
        networkFailure: (n) => n.errorCaption,
        sdkFailure: (s) => s.errorCaption,
      );

  ///Returns the message of the specific failure this contains
  String get errorMessage => when(
        networkFailure: (n) => n.errorMessage,
        sdkFailure: (s) => s.errorMessage,
      );

  ///Returns an [AppFailure] containing a [NetworkFailure]'s null response union case
  factory AppFailure.nullResponse() =>
      const AppFailure.networkFailure(NetworkFailure.nullResponse());

  ///Returns an [AppFailure] containing a generic union case for [SdkFailure] with the given [exception]
  factory AppFailure.generic(Exception exception) => AppFailure.sdkFailure(
        SdkFailure.generic(exception),
      );
}
