// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authenticated_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticatedUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) userAuthenticated,
    required TResult Function() userLoggedOut,
    required TResult Function(String username) updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthenticated value) userAuthenticated,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_UpdateUsername value) updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserEventCopyWith<$Res> {
  factory $AuthenticatedUserEventCopyWith(AuthenticatedUserEvent value,
          $Res Function(AuthenticatedUserEvent) then) =
      _$AuthenticatedUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedUserEventCopyWithImpl<$Res>
    implements $AuthenticatedUserEventCopyWith<$Res> {
  _$AuthenticatedUserEventCopyWithImpl(this._value, this._then);

  final AuthenticatedUserEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticatedUserEvent) _then;
}

/// @nodoc
abstract class _$$_UserAuthenticatedCopyWith<$Res> {
  factory _$$_UserAuthenticatedCopyWith(_$_UserAuthenticated value,
          $Res Function(_$_UserAuthenticated) then) =
      __$$_UserAuthenticatedCopyWithImpl<$Res>;
  $Res call({UserDetails userDetails});
}

/// @nodoc
class __$$_UserAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticatedUserEventCopyWithImpl<$Res>
    implements _$$_UserAuthenticatedCopyWith<$Res> {
  __$$_UserAuthenticatedCopyWithImpl(
      _$_UserAuthenticated _value, $Res Function(_$_UserAuthenticated) _then)
      : super(_value, (v) => _then(v as _$_UserAuthenticated));

  @override
  _$_UserAuthenticated get _value => super._value as _$_UserAuthenticated;

  @override
  $Res call({
    Object? userDetails = freezed,
  }) {
    return _then(_$_UserAuthenticated(
      userDetails == freezed
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
    ));
  }
}

/// @nodoc

class _$_UserAuthenticated implements _UserAuthenticated {
  const _$_UserAuthenticated(this.userDetails);

  @override
  final UserDetails userDetails;

  @override
  String toString() {
    return 'AuthenticatedUserEvent.userAuthenticated(userDetails: $userDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAuthenticated &&
            const DeepCollectionEquality()
                .equals(other.userDetails, userDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userDetails));

  @JsonKey(ignore: true)
  @override
  _$$_UserAuthenticatedCopyWith<_$_UserAuthenticated> get copyWith =>
      __$$_UserAuthenticatedCopyWithImpl<_$_UserAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) userAuthenticated,
    required TResult Function() userLoggedOut,
    required TResult Function(String username) updateUsername,
  }) {
    return userAuthenticated(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
  }) {
    return userAuthenticated?.call(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(userDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthenticated value) userAuthenticated,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_UpdateUsername value) updateUsername,
  }) {
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
  }) {
    return userAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UserAuthenticated implements AuthenticatedUserEvent {
  const factory _UserAuthenticated(final UserDetails userDetails) =
      _$_UserAuthenticated;

  UserDetails get userDetails;
  @JsonKey(ignore: true)
  _$$_UserAuthenticatedCopyWith<_$_UserAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLoggedOutCopyWith<$Res> {
  factory _$$_UserLoggedOutCopyWith(
          _$_UserLoggedOut value, $Res Function(_$_UserLoggedOut) then) =
      __$$_UserLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoggedOutCopyWithImpl<$Res>
    extends _$AuthenticatedUserEventCopyWithImpl<$Res>
    implements _$$_UserLoggedOutCopyWith<$Res> {
  __$$_UserLoggedOutCopyWithImpl(
      _$_UserLoggedOut _value, $Res Function(_$_UserLoggedOut) _then)
      : super(_value, (v) => _then(v as _$_UserLoggedOut));

  @override
  _$_UserLoggedOut get _value => super._value as _$_UserLoggedOut;
}

/// @nodoc

class _$_UserLoggedOut implements _UserLoggedOut {
  const _$_UserLoggedOut();

  @override
  String toString() {
    return 'AuthenticatedUserEvent.userLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) userAuthenticated,
    required TResult Function() userLoggedOut,
    required TResult Function(String username) updateUsername,
  }) {
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
  }) {
    return userLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthenticated value) userAuthenticated,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_UpdateUsername value) updateUsername,
  }) {
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
  }) {
    return userLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedOut implements AuthenticatedUserEvent {
  const factory _UserLoggedOut() = _$_UserLoggedOut;
}

/// @nodoc
abstract class _$$_UpdateUsernameCopyWith<$Res> {
  factory _$$_UpdateUsernameCopyWith(
          _$_UpdateUsername value, $Res Function(_$_UpdateUsername) then) =
      __$$_UpdateUsernameCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_UpdateUsernameCopyWithImpl<$Res>
    extends _$AuthenticatedUserEventCopyWithImpl<$Res>
    implements _$$_UpdateUsernameCopyWith<$Res> {
  __$$_UpdateUsernameCopyWithImpl(
      _$_UpdateUsername _value, $Res Function(_$_UpdateUsername) _then)
      : super(_value, (v) => _then(v as _$_UpdateUsername));

  @override
  _$_UpdateUsername get _value => super._value as _$_UpdateUsername;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UpdateUsername(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUsername implements _UpdateUsername {
  const _$_UpdateUsername(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'AuthenticatedUserEvent.updateUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUsername &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateUsernameCopyWith<_$_UpdateUsername> get copyWith =>
      __$$_UpdateUsernameCopyWithImpl<_$_UpdateUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) userAuthenticated,
    required TResult Function() userLoggedOut,
    required TResult Function(String username) updateUsername,
  }) {
    return updateUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
  }) {
    return updateUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? userAuthenticated,
    TResult Function()? userLoggedOut,
    TResult Function(String username)? updateUsername,
    required TResult orElse(),
  }) {
    if (updateUsername != null) {
      return updateUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthenticated value) userAuthenticated,
    required TResult Function(_UserLoggedOut value) userLoggedOut,
    required TResult Function(_UpdateUsername value) updateUsername,
  }) {
    return updateUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
  }) {
    return updateUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthenticated value)? userAuthenticated,
    TResult Function(_UserLoggedOut value)? userLoggedOut,
    TResult Function(_UpdateUsername value)? updateUsername,
    required TResult orElse(),
  }) {
    if (updateUsername != null) {
      return updateUsername(this);
    }
    return orElse();
  }
}

abstract class _UpdateUsername implements AuthenticatedUserEvent {
  const factory _UpdateUsername(final String username) = _$_UpdateUsername;

  String get username;
  @JsonKey(ignore: true)
  _$$_UpdateUsernameCopyWith<_$_UpdateUsername> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticatedUserState {
// RegisterData? registerData
  UserDetails? get authenticatedUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticatedUserStateCopyWith<AuthenticatedUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserStateCopyWith<$Res> {
  factory $AuthenticatedUserStateCopyWith(AuthenticatedUserState value,
          $Res Function(AuthenticatedUserState) then) =
      _$AuthenticatedUserStateCopyWithImpl<$Res>;
  $Res call({UserDetails? authenticatedUser});
}

/// @nodoc
class _$AuthenticatedUserStateCopyWithImpl<$Res>
    implements $AuthenticatedUserStateCopyWith<$Res> {
  _$AuthenticatedUserStateCopyWithImpl(this._value, this._then);

  final AuthenticatedUserState _value;
  // ignore: unused_field
  final $Res Function(AuthenticatedUserState) _then;

  @override
  $Res call({
    Object? authenticatedUser = freezed,
  }) {
    return _then(_value.copyWith(
      authenticatedUser: authenticatedUser == freezed
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticatedUserStateCopyWith<$Res>
    implements $AuthenticatedUserStateCopyWith<$Res> {
  factory _$$_AuthenticatedUserStateCopyWith(_$_AuthenticatedUserState value,
          $Res Function(_$_AuthenticatedUserState) then) =
      __$$_AuthenticatedUserStateCopyWithImpl<$Res>;
  @override
  $Res call({UserDetails? authenticatedUser});
}

/// @nodoc
class __$$_AuthenticatedUserStateCopyWithImpl<$Res>
    extends _$AuthenticatedUserStateCopyWithImpl<$Res>
    implements _$$_AuthenticatedUserStateCopyWith<$Res> {
  __$$_AuthenticatedUserStateCopyWithImpl(_$_AuthenticatedUserState _value,
      $Res Function(_$_AuthenticatedUserState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticatedUserState));

  @override
  _$_AuthenticatedUserState get _value =>
      super._value as _$_AuthenticatedUserState;

  @override
  $Res call({
    Object? authenticatedUser = freezed,
  }) {
    return _then(_$_AuthenticatedUserState(
      authenticatedUser: authenticatedUser == freezed
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserDetails?,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedUserState extends _AuthenticatedUserState {
  const _$_AuthenticatedUserState({this.authenticatedUser}) : super._();

// RegisterData? registerData
  @override
  final UserDetails? authenticatedUser;

  @override
  String toString() {
    return 'AuthenticatedUserState(authenticatedUser: $authenticatedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedUserState &&
            const DeepCollectionEquality()
                .equals(other.authenticatedUser, authenticatedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authenticatedUser));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticatedUserStateCopyWith<_$_AuthenticatedUserState> get copyWith =>
      __$$_AuthenticatedUserStateCopyWithImpl<_$_AuthenticatedUserState>(
          this, _$identity);
}

abstract class _AuthenticatedUserState extends AuthenticatedUserState {
  const factory _AuthenticatedUserState(
      {final UserDetails? authenticatedUser}) = _$_AuthenticatedUserState;
  const _AuthenticatedUserState._() : super._();

  @override // RegisterData? registerData
  UserDetails? get authenticatedUser;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedUserStateCopyWith<_$_AuthenticatedUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
