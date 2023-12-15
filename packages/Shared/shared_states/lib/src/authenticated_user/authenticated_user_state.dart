part of 'authenticated_user_bloc.dart';

@freezed
class AuthenticatedUserState with _$AuthenticatedUserState {
  const AuthenticatedUserState._();

  const factory AuthenticatedUserState({
    // RegisterData? registerData
    UserDetails? authenticatedUser,
  }) = _AuthenticatedUserState;

  factory AuthenticatedUserState.initial() => const AuthenticatedUserState();

  bool get isUsernameAvailable => authenticatedUser?.username != null;
}
