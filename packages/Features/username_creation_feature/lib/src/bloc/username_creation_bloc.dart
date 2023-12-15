
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:users_use_cases/users_use_cases.dart';
import 'package:validators/validators.dart';

part 'username_creation_event.dart';
part 'username_creation_state.dart';
part 'username_creation_bloc.freezed.dart';

class UsernameCreationBloc extends Bloc<UsernameCreationEvent, UsernameCreationState> {
  final _usernameValidator = UsernameValidator();

  final IUsersService _usersService;

  UsernameCreationBloc(this._usersService) : super(UsernameCreationState.initial()) {
    on<_UsernameChanged>(_onUsernameChanged);
    on<_UsernameCreationFormSubmitted>(_onUsernameCreationSubmitted);
  }

  void _onUsernameChanged(
    _UsernameChanged event,
    Emitter<UsernameCreationState> emit
  ) {
    emit(
      state.copyWith(
        username: event.username,
        validationError: _usernameValidator
          .validate(event.username)
          .fold((l) => l, (r) => null)
      )
    );
  }

  Future<void> _onUsernameCreationSubmitted(
    _UsernameCreationFormSubmitted event,
    Emitter<UsernameCreationState> emit
  ) async {
    if (state.validationError == null) {
      emit(state.copyWith(isLoading: true));

      try {
        final res = await _usersService.updateUsername(username: state.username!);

        if (res.isSuccessful) {
          emit(state.copyWith(
            isLoading: false,
            result: UsernameCreationResult.success(res.response!.updatedUser.username!)
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            result: UsernameCreationResult.faillure(res.error!.reason)
          ));
        }
      } catch (err) {
        emit(state.copyWith(
          isLoading: false,
          result: UsernameCreationResult.faillure(err.toString())
        ));
      }
    }
  }
}
