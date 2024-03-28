// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dev_login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DevLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialMin) ready,
    required TResult Function() loading,
    required TResult Function(String sessionToken) proceed,
    required TResult Function(AppFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Proceed value) proceed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevLoginStateCopyWith<$Res> {
  factory $DevLoginStateCopyWith(
          DevLoginState value, $Res Function(DevLoginState) then) =
      _$DevLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DevLoginStateCopyWithImpl<$Res>
    implements $DevLoginStateCopyWith<$Res> {
  _$DevLoginStateCopyWithImpl(this._value, this._then);

  final DevLoginState _value;
  // ignore: unused_field
  final $Res Function(DevLoginState) _then;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
  $Res call({String initialMin});
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res> extends _$DevLoginStateCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;

  @override
  $Res call({
    Object? initialMin = freezed,
  }) {
    return _then(_$_Ready(
      initialMin == freezed
          ? _value.initialMin
          : initialMin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(this.initialMin);

  @override
  final String initialMin;

  @override
  String toString() {
    return 'DevLoginState.ready(initialMin: $initialMin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ready &&
            const DeepCollectionEquality()
                .equals(other.initialMin, initialMin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(initialMin));

  @JsonKey(ignore: true)
  @override
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      __$$_ReadyCopyWithImpl<_$_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialMin) ready,
    required TResult Function() loading,
    required TResult Function(String sessionToken) proceed,
    required TResult Function(AppFailure error) error,
  }) {
    return ready(initialMin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
  }) {
    return ready?.call(initialMin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(initialMin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Proceed value) proceed,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements DevLoginState {
  const factory _Ready(final String initialMin) = _$_Ready;

  String get initialMin;
  @JsonKey(ignore: true)
  _$$_ReadyCopyWith<_$_Ready> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$DevLoginStateCopyWithImpl<$Res>
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
    return 'DevLoginState.loading()';
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
    required TResult Function(String initialMin) ready,
    required TResult Function() loading,
    required TResult Function(String sessionToken) proceed,
    required TResult Function(AppFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Proceed value) proceed,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DevLoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ProceedCopyWith<$Res> {
  factory _$$_ProceedCopyWith(
          _$_Proceed value, $Res Function(_$_Proceed) then) =
      __$$_ProceedCopyWithImpl<$Res>;
  $Res call({String sessionToken});
}

/// @nodoc
class __$$_ProceedCopyWithImpl<$Res> extends _$DevLoginStateCopyWithImpl<$Res>
    implements _$$_ProceedCopyWith<$Res> {
  __$$_ProceedCopyWithImpl(_$_Proceed _value, $Res Function(_$_Proceed) _then)
      : super(_value, (v) => _then(v as _$_Proceed));

  @override
  _$_Proceed get _value => super._value as _$_Proceed;

  @override
  $Res call({
    Object? sessionToken = freezed,
  }) {
    return _then(_$_Proceed(
      sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Proceed implements _Proceed {
  const _$_Proceed(this.sessionToken);

  @override
  final String sessionToken;

  @override
  String toString() {
    return 'DevLoginState.proceed(sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Proceed &&
            const DeepCollectionEquality()
                .equals(other.sessionToken, sessionToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionToken));

  @JsonKey(ignore: true)
  @override
  _$$_ProceedCopyWith<_$_Proceed> get copyWith =>
      __$$_ProceedCopyWithImpl<_$_Proceed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialMin) ready,
    required TResult Function() loading,
    required TResult Function(String sessionToken) proceed,
    required TResult Function(AppFailure error) error,
  }) {
    return proceed(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
  }) {
    return proceed?.call(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) {
    if (proceed != null) {
      return proceed(sessionToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Proceed value) proceed,
    required TResult Function(_Error value) error,
  }) {
    return proceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
  }) {
    return proceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (proceed != null) {
      return proceed(this);
    }
    return orElse();
  }
}

abstract class _Proceed implements DevLoginState {
  const factory _Proceed(final String sessionToken) = _$_Proceed;

  String get sessionToken;
  @JsonKey(ignore: true)
  _$$_ProceedCopyWith<_$_Proceed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({AppFailure error});

  $AppFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$DevLoginStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  @override
  $AppFailureCopyWith<$Res> get error {
    return $AppFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final AppFailure error;

  @override
  String toString() {
    return 'DevLoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialMin) ready,
    required TResult Function() loading,
    required TResult Function(String sessionToken) proceed,
    required TResult Function(AppFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialMin)? ready,
    TResult Function()? loading,
    TResult Function(String sessionToken)? proceed,
    TResult Function(AppFailure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Proceed value) proceed,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    TResult Function(_Loading value)? loading,
    TResult Function(_Proceed value)? proceed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DevLoginState {
  const factory _Error(final AppFailure error) = _$_Error;

  AppFailure get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
