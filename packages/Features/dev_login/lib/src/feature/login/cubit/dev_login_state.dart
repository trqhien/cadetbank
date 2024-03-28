part of 'dev_login_cubit.dart';

@freezed
class DevLoginState with _$DevLoginState {
  const factory DevLoginState.ready(String initialMin) = _Ready;
  const factory DevLoginState.loading() = _Loading;
  const factory DevLoginState.proceed(String sessionToken) = _Proceed;
  const factory DevLoginState.error(AppFailure error) = _Error;
}
