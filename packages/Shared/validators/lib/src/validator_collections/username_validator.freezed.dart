// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'username_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsernameValidatorError {
  String get reason => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(UsernameRegexValidatorError error, String reason)
        regexValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(UsernameRegexValidatorError error, String reason)?
        regexValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(UsernameRegexValidatorError error, String reason)?
        regexValidatorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_RegexValidatorError value) regexValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_RegexValidatorError value)? regexValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_RegexValidatorError value)? regexValidatorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsernameValidatorErrorCopyWith<UsernameValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameValidatorErrorCopyWith<$Res> {
  factory $UsernameValidatorErrorCopyWith(UsernameValidatorError value,
          $Res Function(UsernameValidatorError) then) =
      _$UsernameValidatorErrorCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$UsernameValidatorErrorCopyWithImpl<$Res>
    implements $UsernameValidatorErrorCopyWith<$Res> {
  _$UsernameValidatorErrorCopyWithImpl(this._value, this._then);

  final UsernameValidatorError _value;
  // ignore: unused_field
  final $Res Function(UsernameValidatorError) _then;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LengthValidatorErrorCopyWith<$Res>
    implements $UsernameValidatorErrorCopyWith<$Res> {
  factory _$$_LengthValidatorErrorCopyWith(_$_LengthValidatorError value,
          $Res Function(_$_LengthValidatorError) then) =
      __$$_LengthValidatorErrorCopyWithImpl<$Res>;
  @override
  $Res call({TextLengthValidatorError error, String reason});

  $TextLengthValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_LengthValidatorErrorCopyWithImpl<$Res>
    extends _$UsernameValidatorErrorCopyWithImpl<$Res>
    implements _$$_LengthValidatorErrorCopyWith<$Res> {
  __$$_LengthValidatorErrorCopyWithImpl(_$_LengthValidatorError _value,
      $Res Function(_$_LengthValidatorError) _then)
      : super(_value, (v) => _then(v as _$_LengthValidatorError));

  @override
  _$_LengthValidatorError get _value => super._value as _$_LengthValidatorError;

  @override
  $Res call({
    Object? error = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_LengthValidatorError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TextLengthValidatorError,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TextLengthValidatorErrorCopyWith<$Res> get error {
    return $TextLengthValidatorErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_LengthValidatorError extends _LengthValidatorError {
  _$_LengthValidatorError(this.error, {required this.reason}) : super._();

  @override
  final TextLengthValidatorError error;
  @override
  final String reason;

  @override
  String toString() {
    return 'UsernameValidatorError.lengthValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_LengthValidatorErrorCopyWith<_$_LengthValidatorError> get copyWith =>
      __$$_LengthValidatorErrorCopyWithImpl<_$_LengthValidatorError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(UsernameRegexValidatorError error, String reason)
        regexValidatorError,
  }) {
    return lengthValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(UsernameRegexValidatorError error, String reason)?
        regexValidatorError,
  }) {
    return lengthValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(UsernameRegexValidatorError error, String reason)?
        regexValidatorError,
    required TResult orElse(),
  }) {
    if (lengthValidatorError != null) {
      return lengthValidatorError(error, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_RegexValidatorError value) regexValidatorError,
  }) {
    return lengthValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_RegexValidatorError value)? regexValidatorError,
  }) {
    return lengthValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_RegexValidatorError value)? regexValidatorError,
    required TResult orElse(),
  }) {
    if (lengthValidatorError != null) {
      return lengthValidatorError(this);
    }
    return orElse();
  }
}

abstract class _LengthValidatorError extends UsernameValidatorError {
  factory _LengthValidatorError(final TextLengthValidatorError error,
      {required final String reason}) = _$_LengthValidatorError;
  _LengthValidatorError._() : super._();

  TextLengthValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_LengthValidatorErrorCopyWith<_$_LengthValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegexValidatorErrorCopyWith<$Res>
    implements $UsernameValidatorErrorCopyWith<$Res> {
  factory _$$_RegexValidatorErrorCopyWith(_$_RegexValidatorError value,
          $Res Function(_$_RegexValidatorError) then) =
      __$$_RegexValidatorErrorCopyWithImpl<$Res>;
  @override
  $Res call({UsernameRegexValidatorError error, String reason});

  $UsernameRegexValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_RegexValidatorErrorCopyWithImpl<$Res>
    extends _$UsernameValidatorErrorCopyWithImpl<$Res>
    implements _$$_RegexValidatorErrorCopyWith<$Res> {
  __$$_RegexValidatorErrorCopyWithImpl(_$_RegexValidatorError _value,
      $Res Function(_$_RegexValidatorError) _then)
      : super(_value, (v) => _then(v as _$_RegexValidatorError));

  @override
  _$_RegexValidatorError get _value => super._value as _$_RegexValidatorError;

  @override
  $Res call({
    Object? error = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_RegexValidatorError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UsernameRegexValidatorError,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UsernameRegexValidatorErrorCopyWith<$Res> get error {
    return $UsernameRegexValidatorErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_RegexValidatorError extends _RegexValidatorError {
  _$_RegexValidatorError(this.error, {required this.reason}) : super._();

  @override
  final UsernameRegexValidatorError error;
  @override
  final String reason;

  @override
  String toString() {
    return 'UsernameValidatorError.regexValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_RegexValidatorErrorCopyWith<_$_RegexValidatorError> get copyWith =>
      __$$_RegexValidatorErrorCopyWithImpl<_$_RegexValidatorError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(UsernameRegexValidatorError error, String reason)
        regexValidatorError,
  }) {
    return regexValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(UsernameRegexValidatorError error, String reason)?
        regexValidatorError,
  }) {
    return regexValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(UsernameRegexValidatorError error, String reason)?
        regexValidatorError,
    required TResult orElse(),
  }) {
    if (regexValidatorError != null) {
      return regexValidatorError(error, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_RegexValidatorError value) regexValidatorError,
  }) {
    return regexValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_RegexValidatorError value)? regexValidatorError,
  }) {
    return regexValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_RegexValidatorError value)? regexValidatorError,
    required TResult orElse(),
  }) {
    if (regexValidatorError != null) {
      return regexValidatorError(this);
    }
    return orElse();
  }
}

abstract class _RegexValidatorError extends UsernameValidatorError {
  factory _RegexValidatorError(final UsernameRegexValidatorError error,
      {required final String reason}) = _$_RegexValidatorError;
  _RegexValidatorError._() : super._();

  UsernameRegexValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_RegexValidatorErrorCopyWith<_$_RegexValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsernameRegexValidatorError {
  String get failedValue => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String reason)
        invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUsername value) invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidUsername value)? invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUsername value)? invalidUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsernameRegexValidatorErrorCopyWith<UsernameRegexValidatorError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameRegexValidatorErrorCopyWith<$Res> {
  factory $UsernameRegexValidatorErrorCopyWith(
          UsernameRegexValidatorError value,
          $Res Function(UsernameRegexValidatorError) then) =
      _$UsernameRegexValidatorErrorCopyWithImpl<$Res>;
  $Res call({String failedValue, String reason});
}

/// @nodoc
class _$UsernameRegexValidatorErrorCopyWithImpl<$Res>
    implements $UsernameRegexValidatorErrorCopyWith<$Res> {
  _$UsernameRegexValidatorErrorCopyWithImpl(this._value, this._then);

  final UsernameRegexValidatorError _value;
  // ignore: unused_field
  final $Res Function(UsernameRegexValidatorError) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InvalidUsernameCopyWith<$Res>
    implements $UsernameRegexValidatorErrorCopyWith<$Res> {
  factory _$$_InvalidUsernameCopyWith(
          _$_InvalidUsername value, $Res Function(_$_InvalidUsername) then) =
      __$$_InvalidUsernameCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue, String reason});
}

/// @nodoc
class __$$_InvalidUsernameCopyWithImpl<$Res>
    extends _$UsernameRegexValidatorErrorCopyWithImpl<$Res>
    implements _$$_InvalidUsernameCopyWith<$Res> {
  __$$_InvalidUsernameCopyWithImpl(
      _$_InvalidUsername _value, $Res Function(_$_InvalidUsername) _then)
      : super(_value, (v) => _then(v as _$_InvalidUsername));

  @override
  _$_InvalidUsername get _value => super._value as _$_InvalidUsername;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_InvalidUsername(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidUsername extends _InvalidUsername {
  _$_InvalidUsername(this.failedValue, {required this.reason}) : super._();

  @override
  final String failedValue;
  @override
  final String reason;

  @override
  String toString() {
    return 'UsernameRegexValidatorError.invalidUsername(failedValue: $failedValue, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_InvalidUsernameCopyWith<_$_InvalidUsername> get copyWith =>
      __$$_InvalidUsernameCopyWithImpl<_$_InvalidUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String reason)
        invalidUsername,
  }) {
    return invalidUsername(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidUsername,
  }) {
    return invalidUsername?.call(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidUsername,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(failedValue, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUsername value) invalidUsername,
  }) {
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidUsername value)? invalidUsername,
  }) {
    return invalidUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUsername value)? invalidUsername,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class _InvalidUsername extends UsernameRegexValidatorError {
  factory _InvalidUsername(final String failedValue,
      {required final String reason}) = _$_InvalidUsername;
  _InvalidUsername._() : super._();

  @override
  String get failedValue;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidUsernameCopyWith<_$_InvalidUsername> get copyWith =>
      throw _privateConstructorUsedError;
}
