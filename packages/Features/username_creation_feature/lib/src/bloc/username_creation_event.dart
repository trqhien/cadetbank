part of 'username_creation_bloc.dart';

@freezed
class UsernameCreationEvent with _$UsernameCreationEvent {
  const factory UsernameCreationEvent.usernameChanged(String username) = _UsernameChanged;
  const factory UsernameCreationEvent.usernameCreationFormSubmitted() = _UsernameCreationFormSubmitted;
}