part of 'username_creation_bloc.dart';

@freezed
class UsernameCreationState with _$UsernameCreationState {
  const factory UsernameCreationState({
    String? username,
    UsernameValidatorFailure? validationError,
    @Default(false) bool isLoading,
    UsernameCreationResult? result
  }) = _UsernameCreationState;

  factory UsernameCreationState.initial() => const UsernameCreationState();
}

@freezed
class UsernameCreationResult with _$UsernameCreationResult {
  const factory UsernameCreationResult.success(String updatedUsername) = Success;
  const factory UsernameCreationResult.faillure(String reason) = Failure;
}
