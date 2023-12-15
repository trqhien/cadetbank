import 'package:auth_use_cases/auth_use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_storage_use_cases/local_storage_use_cases.dart';
import 'package:shared_models/shared_models.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthService _authService;
  final ILocalStorageService _storage;

  LoginBloc(this._authService, this._storage) : super(LoginState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginFormSubmitted>(_onLoginFormSubmitted);
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        email: event.email,
        isValid: _validate(email: event.email, password: state.password),
      )
    );
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
        isValid: _validate(email: state.email, password: event.password),
      )
    );
  }

  Future<void> _onLoginFormSubmitted(
    LoginFormSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(isLoading: true, result: null));

      // LoginReponse? loginResponse;

      try {
        final res = await _authService.login(email: state.email!, password: state.password!);

        if (res.isSuccessful) {
          final loginResponse = res.response!;
          await _storage.setString(StorageKey.token, loginResponse.token);
          await _storage.setString(StorageKey.refreshRoken, loginResponse.refreshToken);
          emit(
            state.copyWith(
              isLoading: false,
              result: LoginResult.success(loginResponse.user)
            )
          );
        } else {
          emit(
            state.copyWith(
              isLoading: false,
              result: LoginResult.faillure(res.error!.reason)
            )
          );
        }
      } catch (err) {
        emit(
            state.copyWith(
              isLoading: false,
              result: LoginResult.faillure(err.toString())
            )
          );
      }
    }
  }

  bool _validate({String? email, String? password}) {
    return email != null
      && email.isNotEmpty
      && password != null
      && password.isNotEmpty;
  }
}
