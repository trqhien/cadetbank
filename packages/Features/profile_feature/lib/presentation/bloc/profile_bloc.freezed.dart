// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LogOutResult result) logOutCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LogOutCompleted value) logOutCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LogOutResult result) logOutCompleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LogOutCompleted value) logOutCompleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LogOutResult result) logOutCompleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LogOutCompleted value) logOutCompleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LogOutCompletedCopyWith<$Res> {
  factory _$$_LogOutCompletedCopyWith(
          _$_LogOutCompleted value, $Res Function(_$_LogOutCompleted) then) =
      __$$_LogOutCompletedCopyWithImpl<$Res>;
  $Res call({LogOutResult result});

  $LogOutResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$_LogOutCompletedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_LogOutCompletedCopyWith<$Res> {
  __$$_LogOutCompletedCopyWithImpl(
      _$_LogOutCompleted _value, $Res Function(_$_LogOutCompleted) _then)
      : super(_value, (v) => _then(v as _$_LogOutCompleted));

  @override
  _$_LogOutCompleted get _value => super._value as _$_LogOutCompleted;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_LogOutCompleted(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LogOutResult,
    ));
  }

  @override
  $LogOutResultCopyWith<$Res> get result {
    return $LogOutResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$_LogOutCompleted implements _LogOutCompleted {
  const _$_LogOutCompleted(this.result);

  @override
  final LogOutResult result;

  @override
  String toString() {
    return 'ProfileState.logOutCompleted(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogOutCompleted &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_LogOutCompletedCopyWith<_$_LogOutCompleted> get copyWith =>
      __$$_LogOutCompletedCopyWithImpl<_$_LogOutCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LogOutResult result) logOutCompleted,
  }) {
    return logOutCompleted(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
  }) {
    return logOutCompleted?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LogOutResult result)? logOutCompleted,
    required TResult orElse(),
  }) {
    if (logOutCompleted != null) {
      return logOutCompleted(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LogOutCompleted value) logOutCompleted,
  }) {
    return logOutCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
  }) {
    return logOutCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LogOutCompleted value)? logOutCompleted,
    required TResult orElse(),
  }) {
    if (logOutCompleted != null) {
      return logOutCompleted(this);
    }
    return orElse();
  }
}

abstract class _LogOutCompleted implements ProfileState {
  const factory _LogOutCompleted(final LogOutResult result) =
      _$_LogOutCompleted;

  LogOutResult get result;
  @JsonKey(ignore: true)
  _$$_LogOutCompletedCopyWith<_$_LogOutCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LogOutResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String reason) faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String reason)? faillure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
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
abstract class $LogOutResultCopyWith<$Res> {
  factory $LogOutResultCopyWith(
          LogOutResult value, $Res Function(LogOutResult) then) =
      _$LogOutResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogOutResultCopyWithImpl<$Res> implements $LogOutResultCopyWith<$Res> {
  _$LogOutResultCopyWithImpl(this._value, this._then);

  final LogOutResult _value;
  // ignore: unused_field
  final $Res Function(LogOutResult) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res> extends _$LogOutResultCopyWithImpl<$Res>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, (v) => _then(v as _$Success));

  @override
  _$Success get _value => super._value as _$Success;
}

/// @nodoc

class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'LogOutResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String reason) faillure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String reason)? faillure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String reason)? faillure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
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

abstract class Success implements LogOutResult {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res> extends _$LogOutResultCopyWithImpl<$Res>
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
    return 'LogOutResult.faillure(reason: $reason)';
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
    required TResult Function() success,
    required TResult Function(String reason) faillure,
  }) {
    return faillure(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String reason)? faillure,
  }) {
    return faillure?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
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

abstract class Failure implements LogOutResult {
  const factory Failure(final String reason) = _$Failure;

  String get reason;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$LogOutCopyWith<$Res> {
  factory _$$LogOutCopyWith(_$LogOut value, $Res Function(_$LogOut) then) =
      __$$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$LogOutCopyWith<$Res> {
  __$$LogOutCopyWithImpl(_$LogOut _value, $Res Function(_$LogOut) _then)
      : super(_value, (v) => _then(v as _$LogOut));

  @override
  _$LogOut get _value => super._value as _$LogOut;
}

/// @nodoc

class _$LogOut implements LogOut {
  const _$LogOut();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements ProfileEvent {
  const factory LogOut() = _$LogOut;
}
