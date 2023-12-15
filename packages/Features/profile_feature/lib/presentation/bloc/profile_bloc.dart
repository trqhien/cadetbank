import 'package:auth_use_cases/auth_use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_storage_use_cases/local_storage_use_cases.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IAuthService _authService;
  final ILocalStorageService _storage;

  ProfileBloc(this._authService, this._storage) : super(const ProfileState.initial()) {
    on<LogOut>(_onLoggingOut);
  }

  Future<void> _onLoggingOut(
    LogOut event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());

    try {
      final res = await _authService.logout();

      if (res.isSuccessful) {
        await _storage.remove(StorageKey.token);
        await _storage.remove(StorageKey.refreshRoken);
        emit(const ProfileState.logOutCompleted(LogOutResult.success()));
      } else {
        emit(ProfileState.logOutCompleted(LogOutResult.faillure(res.error!.reason)));
      }
    } catch (err) {
      emit(ProfileState.logOutCompleted(LogOutResult.faillure(err.toString())));
    }
  }
}
