import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_models/shared_models.dart';

part 'authenticated_user_event.dart';
part 'authenticated_user_state.dart';
part 'authenticated_user_bloc.freezed.dart';

@lazySingleton
class AuthenticatedUserBloc extends Bloc<AuthenticatedUserEvent, AuthenticatedUserState> {
  AuthenticatedUserBloc() : super(AuthenticatedUserState.initial()) {
    on<_UserAuthenticated>(_onUserAuthenticated);
    on<_UserLoggedOut>(_onUserLoggedOut);
    on<_UpdateUsername>(_onUpdateUsername);
  }

  void _onUserAuthenticated(
    _UserAuthenticated event,
    Emitter<AuthenticatedUserState> emit
  ) {
    emit(state.copyWith(authenticatedUser: event.userDetails));
  }

  void _onUserLoggedOut(
    _UserLoggedOut event,
    Emitter<AuthenticatedUserState> emit
  ) {
    emit(state.copyWith(authenticatedUser: null));
  }

  void _onUpdateUsername(
    _UpdateUsername event,
    Emitter<AuthenticatedUserState> emit
  ) {
    if (state.authenticatedUser == null) { return; }

    emit(state.copyWith(
      authenticatedUser: state.authenticatedUser!.copyWith(username: event.username)
    ));
  } 
}
