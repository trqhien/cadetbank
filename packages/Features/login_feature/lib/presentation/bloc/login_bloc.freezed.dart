// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  LoginResult? get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      String? password,
      bool isValid,
      bool isLoading,
      LoginResult? result});

  $LoginResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isValid = freezed,
    Object? isLoading = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
    ));
  }

  @override
  $LoginResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $LoginResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email,
      String? password,
      bool isValid,
      bool isLoading,
      LoginResult? result});

  @override
  $LoginResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? isValid = freezed,
    Object? isLoading = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_LoginState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.email,
      this.password,
      this.isValid = false,
      this.isLoading = false,
      this.result});

  @override
  final String? email;
  @override
  final String? password;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final LoginResult? result;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, isValid: $isValid, isLoading: $isLoading, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.isValid, isValid) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isValid),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final String? email,
      final String? password,
      final bool isValid,
      final bool isLoading,
      final LoginResult? result}) = _$_LoginState;

  @override
  String? get email;
  @override
  String? get password;
  @override
  bool get isValid;
  @override
  bool get isLoading;
  @override
  LoginResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) success,
    required TResult Function(String reason) faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? success,
    TResult Function(String reason)? faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failure value) faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res> implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  final LoginResult _value;
  // ignore: unused_field
  final $Res Function(LoginResult) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  $Res call({UserDetails userDetails});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, (v) => _then(v as _$Success));

  @override
  _$Success get _value => super._value as _$Success;

  @override
  $Res call({
    Object? userDetails = freezed,
  }) {
    return _then(_$Success(
      userDetails == freezed
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(this.userDetails);

  @override
  final UserDetails userDetails;

  @override
  String toString() {
    return 'LoginResult.success(userDetails: $userDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            const DeepCollectionEquality()
                .equals(other.userDetails, userDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userDetails));

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) success,
    required TResult Function(String reason) faillure,
  }) {
    return success(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? success,
    TResult Function(String reason)? faillure,
  }) {
    return success?.call(userDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failure value) faillure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginResult {
  const factory Success(final UserDetails userDetails) = _$Success;

  UserDetails get userDetails;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, (v) => _then(v as _$Failure));

  @override
  _$Failure get _value => super._value as _$Failure;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$Failure(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'LoginResult.faillure(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserDetails userDetails) success,
    required TResult Function(String reason) faillure,
  }) {
    return faillure(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? success,
    TResult Function(String reason)? faillure,
  }) {
    return faillure?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserDetails userDetails)? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) {
    if (faillure != null) {
      return faillure(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) success,
    required TResult Function(Failure value) faillure,
  }) {
    return faillure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
  }) {
    return faillure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? success,
    TResult Function(Failure value)? faillure,
    required TResult orElse(),
  }) {
    if (faillure != null) {
      return faillure(this);
    }
    return orElse();
  }
}

abstract class Failure implements LoginResult {
  const factory Failure(final String reason) = _$Failure;

  String get reason;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginFormSubmitted value) loginFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginFormSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginFormSubmitted value) loginFormSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LoginEvent {
  const factory EmailChanged(final String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginFormSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginFormSubmitted value) loginFormSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(final String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFormSubmittedCopyWith<$Res> {
  factory _$$LoginFormSubmittedCopyWith(_$LoginFormSubmitted value,
          $Res Function(_$LoginFormSubmitted) then) =
      __$$LoginFormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginFormSubmittedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginFormSubmittedCopyWith<$Res> {
  __$$LoginFormSubmittedCopyWithImpl(
      _$LoginFormSubmitted _value, $Res Function(_$LoginFormSubmitted) _then)
      : super(_value, (v) => _then(v as _$LoginFormSubmitted));

  @override
  _$LoginFormSubmitted get _value => super._value as _$LoginFormSubmitted;
}

/// @nodoc

class _$LoginFormSubmitted implements LoginFormSubmitted {
  const _$LoginFormSubmitted();

  @override
  String toString() {
    return 'LoginEvent.loginFormSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginFormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() loginFormSubmitted,
  }) {
    return loginFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
  }) {
    return loginFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? loginFormSubmitted,
    required TResult orElse(),
  }) {
    if (loginFormSubmitted != null) {
      return loginFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginFormSubmitted value) loginFormSubmitted,
  }) {
    return loginFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
  }) {
    return loginFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginFormSubmitted value)? loginFormSubmitted,
    required TResult orElse(),
  }) {
    if (loginFormSubmitted != null) {
      return loginFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class LoginFormSubmitted implements LoginEvent {
  const factory LoginFormSubmitted() = _$LoginFormSubmitted;
}
