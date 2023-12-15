part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = PasswordChanged;
  const factory LoginEvent.loginFormSubmitted() = LoginFormSubmitted;

}