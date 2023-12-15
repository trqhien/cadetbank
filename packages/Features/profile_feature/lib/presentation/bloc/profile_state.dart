part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.logOutCompleted(LogOutResult result) = _LogOutCompleted;
}

@freezed
class LogOutResult with _$LogOutResult {
  const factory LogOutResult.success() = Success;
  const factory LogOutResult.faillure(String reason) = Failure;
}
