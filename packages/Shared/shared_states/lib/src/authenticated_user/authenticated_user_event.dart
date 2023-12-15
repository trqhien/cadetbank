part of 'authenticated_user_bloc.dart';

@freezed
class AuthenticatedUserEvent with _$AuthenticatedUserEvent {
  const factory AuthenticatedUserEvent.userAuthenticated(UserDetails userDetails) = _UserAuthenticated;
  const factory AuthenticatedUserEvent.userLoggedOut() = _UserLoggedOut;
  const factory AuthenticatedUserEvent.updateUsername(String username) = _UpdateUsername;
}