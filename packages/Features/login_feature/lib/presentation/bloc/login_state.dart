part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    String? email,
    String? password,
    @Default(false) bool isValid,
    @Default(false) bool isLoading,
    LoginResult? result
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();
}

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult.success(UserDetails userDetails) = Success;
  const factory LoginResult.faillure(String reason) = Failure;
}
