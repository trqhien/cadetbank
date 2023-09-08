// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordValidatorError {
  Object get error => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(HasUppercaseValidatorError error, String reason)
        uppercaseValidatorError,
    required TResult Function(HasLowercaseValidatorError error, String reason)
        lowercaseValidatorError,
    required TResult Function(
            HasNumericLetterValidatorError error, String reason)
        numericCharacterValidatorError,
    required TResult Function(
            HasSpecialCharacterValidatorError error, String reason)
        specialCharacterValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult? Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult? Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult? Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult? Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_UppercaseValidatorError value)
        uppercaseValidatorError,
    required TResult Function(_LowercaseValidatorError value)
        lowercaseValidatorError,
    required TResult Function(_NumericCharacterValidatorError value)
        numericCharacterValidatorError,
    required TResult Function(_SpecialCharacterValidatorError value)
        specialCharacterValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthValidatorError value)? lengthValidatorError,
    TResult? Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult? Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult? Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult? Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordValidatorErrorCopyWith<PasswordValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordValidatorErrorCopyWith<$Res> {
  factory $PasswordValidatorErrorCopyWith(PasswordValidatorError value,
          $Res Function(PasswordValidatorError) then) =
      _$PasswordValidatorErrorCopyWithImpl<$Res, PasswordValidatorError>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class _$PasswordValidatorErrorCopyWithImpl<$Res,
        $Val extends PasswordValidatorError>
    implements $PasswordValidatorErrorCopyWith<$Res> {
  _$PasswordValidatorErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LengthValidatorErrorCopyWith<$Res>
    implements $PasswordValidatorErrorCopyWith<$Res> {
  factory _$$_LengthValidatorErrorCopyWith(_$_LengthValidatorError value,
          $Res Function(_$_LengthValidatorError) then) =
      __$$_LengthValidatorErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextLengthValidatorError error, String reason});

  $TextLengthValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_LengthValidatorErrorCopyWithImpl<$Res>
    extends _$PasswordValidatorErrorCopyWithImpl<$Res, _$_LengthValidatorError>
    implements _$$_LengthValidatorErrorCopyWith<$Res> {
  __$$_LengthValidatorErrorCopyWithImpl(_$_LengthValidatorError _value,
      $Res Function(_$_LengthValidatorError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? reason = null,
  }) {
    return _then(_$_LengthValidatorError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TextLengthValidatorError,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
    return 'PasswordValidatorError.lengthValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LengthValidatorErrorCopyWith<_$_LengthValidatorError> get copyWith =>
      __$$_LengthValidatorErrorCopyWithImpl<_$_LengthValidatorError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(HasUppercaseValidatorError error, String reason)
        uppercaseValidatorError,
    required TResult Function(HasLowercaseValidatorError error, String reason)
        lowercaseValidatorError,
    required TResult Function(
            HasNumericLetterValidatorError error, String reason)
        numericCharacterValidatorError,
    required TResult Function(
            HasSpecialCharacterValidatorError error, String reason)
        specialCharacterValidatorError,
  }) {
    return lengthValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult? Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult? Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult? Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult? Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
  }) {
    return lengthValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
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
    required TResult Function(_UppercaseValidatorError value)
        uppercaseValidatorError,
    required TResult Function(_LowercaseValidatorError value)
        lowercaseValidatorError,
    required TResult Function(_NumericCharacterValidatorError value)
        numericCharacterValidatorError,
    required TResult Function(_SpecialCharacterValidatorError value)
        specialCharacterValidatorError,
  }) {
    return lengthValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthValidatorError value)? lengthValidatorError,
    TResult? Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult? Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult? Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult? Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
  }) {
    return lengthValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (lengthValidatorError != null) {
      return lengthValidatorError(this);
    }
    return orElse();
  }
}

abstract class _LengthValidatorError extends PasswordValidatorError {
  factory _LengthValidatorError(final TextLengthValidatorError error,
      {required final String reason}) = _$_LengthValidatorError;
  _LengthValidatorError._() : super._();

  @override
  TextLengthValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_LengthValidatorErrorCopyWith<_$_LengthValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UppercaseValidatorErrorCopyWith<$Res>
    implements $PasswordValidatorErrorCopyWith<$Res> {
  factory _$$_UppercaseValidatorErrorCopyWith(_$_UppercaseValidatorError value,
          $Res Function(_$_UppercaseValidatorError) then) =
      __$$_UppercaseValidatorErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HasUppercaseValidatorError error, String reason});

  $HasUppercaseValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_UppercaseValidatorErrorCopyWithImpl<$Res>
    extends _$PasswordValidatorErrorCopyWithImpl<$Res,
        _$_UppercaseValidatorError>
    implements _$$_UppercaseValidatorErrorCopyWith<$Res> {
  __$$_UppercaseValidatorErrorCopyWithImpl(_$_UppercaseValidatorError _value,
      $Res Function(_$_UppercaseValidatorError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? reason = null,
  }) {
    return _then(_$_UppercaseValidatorError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HasUppercaseValidatorError,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HasUppercaseValidatorErrorCopyWith<$Res> get error {
    return $HasUppercaseValidatorErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_UppercaseValidatorError extends _UppercaseValidatorError {
  _$_UppercaseValidatorError(this.error, {required this.reason}) : super._();

  @override
  final HasUppercaseValidatorError error;
  @override
  final String reason;

  @override
  String toString() {
    return 'PasswordValidatorError.uppercaseValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UppercaseValidatorErrorCopyWith<_$_UppercaseValidatorError>
      get copyWith =>
          __$$_UppercaseValidatorErrorCopyWithImpl<_$_UppercaseValidatorError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(HasUppercaseValidatorError error, String reason)
        uppercaseValidatorError,
    required TResult Function(HasLowercaseValidatorError error, String reason)
        lowercaseValidatorError,
    required TResult Function(
            HasNumericLetterValidatorError error, String reason)
        numericCharacterValidatorError,
    required TResult Function(
            HasSpecialCharacterValidatorError error, String reason)
        specialCharacterValidatorError,
  }) {
    return uppercaseValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult? Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult? Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult? Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult? Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
  }) {
    return uppercaseValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (uppercaseValidatorError != null) {
      return uppercaseValidatorError(error, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_UppercaseValidatorError value)
        uppercaseValidatorError,
    required TResult Function(_LowercaseValidatorError value)
        lowercaseValidatorError,
    required TResult Function(_NumericCharacterValidatorError value)
        numericCharacterValidatorError,
    required TResult Function(_SpecialCharacterValidatorError value)
        specialCharacterValidatorError,
  }) {
    return uppercaseValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthValidatorError value)? lengthValidatorError,
    TResult? Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult? Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult? Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult? Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
  }) {
    return uppercaseValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (uppercaseValidatorError != null) {
      return uppercaseValidatorError(this);
    }
    return orElse();
  }
}

abstract class _UppercaseValidatorError extends PasswordValidatorError {
  factory _UppercaseValidatorError(final HasUppercaseValidatorError error,
      {required final String reason}) = _$_UppercaseValidatorError;
  _UppercaseValidatorError._() : super._();

  @override
  HasUppercaseValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_UppercaseValidatorErrorCopyWith<_$_UppercaseValidatorError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LowercaseValidatorErrorCopyWith<$Res>
    implements $PasswordValidatorErrorCopyWith<$Res> {
  factory _$$_LowercaseValidatorErrorCopyWith(_$_LowercaseValidatorError value,
          $Res Function(_$_LowercaseValidatorError) then) =
      __$$_LowercaseValidatorErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HasLowercaseValidatorError error, String reason});

  $HasLowercaseValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_LowercaseValidatorErrorCopyWithImpl<$Res>
    extends _$PasswordValidatorErrorCopyWithImpl<$Res,
        _$_LowercaseValidatorError>
    implements _$$_LowercaseValidatorErrorCopyWith<$Res> {
  __$$_LowercaseValidatorErrorCopyWithImpl(_$_LowercaseValidatorError _value,
      $Res Function(_$_LowercaseValidatorError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? reason = null,
  }) {
    return _then(_$_LowercaseValidatorError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HasLowercaseValidatorError,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HasLowercaseValidatorErrorCopyWith<$Res> get error {
    return $HasLowercaseValidatorErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_LowercaseValidatorError extends _LowercaseValidatorError {
  _$_LowercaseValidatorError(this.error, {required this.reason}) : super._();

  @override
  final HasLowercaseValidatorError error;
  @override
  final String reason;

  @override
  String toString() {
    return 'PasswordValidatorError.lowercaseValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LowercaseValidatorErrorCopyWith<_$_LowercaseValidatorError>
      get copyWith =>
          __$$_LowercaseValidatorErrorCopyWithImpl<_$_LowercaseValidatorError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(HasUppercaseValidatorError error, String reason)
        uppercaseValidatorError,
    required TResult Function(HasLowercaseValidatorError error, String reason)
        lowercaseValidatorError,
    required TResult Function(
            HasNumericLetterValidatorError error, String reason)
        numericCharacterValidatorError,
    required TResult Function(
            HasSpecialCharacterValidatorError error, String reason)
        specialCharacterValidatorError,
  }) {
    return lowercaseValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult? Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult? Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult? Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult? Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
  }) {
    return lowercaseValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (lowercaseValidatorError != null) {
      return lowercaseValidatorError(error, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_UppercaseValidatorError value)
        uppercaseValidatorError,
    required TResult Function(_LowercaseValidatorError value)
        lowercaseValidatorError,
    required TResult Function(_NumericCharacterValidatorError value)
        numericCharacterValidatorError,
    required TResult Function(_SpecialCharacterValidatorError value)
        specialCharacterValidatorError,
  }) {
    return lowercaseValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthValidatorError value)? lengthValidatorError,
    TResult? Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult? Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult? Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult? Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
  }) {
    return lowercaseValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (lowercaseValidatorError != null) {
      return lowercaseValidatorError(this);
    }
    return orElse();
  }
}

abstract class _LowercaseValidatorError extends PasswordValidatorError {
  factory _LowercaseValidatorError(final HasLowercaseValidatorError error,
      {required final String reason}) = _$_LowercaseValidatorError;
  _LowercaseValidatorError._() : super._();

  @override
  HasLowercaseValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_LowercaseValidatorErrorCopyWith<_$_LowercaseValidatorError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NumericCharacterValidatorErrorCopyWith<$Res>
    implements $PasswordValidatorErrorCopyWith<$Res> {
  factory _$$_NumericCharacterValidatorErrorCopyWith(
          _$_NumericCharacterValidatorError value,
          $Res Function(_$_NumericCharacterValidatorError) then) =
      __$$_NumericCharacterValidatorErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HasNumericLetterValidatorError error, String reason});

  $HasNumericLetterValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_NumericCharacterValidatorErrorCopyWithImpl<$Res>
    extends _$PasswordValidatorErrorCopyWithImpl<$Res,
        _$_NumericCharacterValidatorError>
    implements _$$_NumericCharacterValidatorErrorCopyWith<$Res> {
  __$$_NumericCharacterValidatorErrorCopyWithImpl(
      _$_NumericCharacterValidatorError _value,
      $Res Function(_$_NumericCharacterValidatorError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? reason = null,
  }) {
    return _then(_$_NumericCharacterValidatorError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HasNumericLetterValidatorError,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HasNumericLetterValidatorErrorCopyWith<$Res> get error {
    return $HasNumericLetterValidatorErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_NumericCharacterValidatorError
    extends _NumericCharacterValidatorError {
  _$_NumericCharacterValidatorError(this.error, {required this.reason})
      : super._();

  @override
  final HasNumericLetterValidatorError error;
  @override
  final String reason;

  @override
  String toString() {
    return 'PasswordValidatorError.numericCharacterValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumericCharacterValidatorErrorCopyWith<_$_NumericCharacterValidatorError>
      get copyWith => __$$_NumericCharacterValidatorErrorCopyWithImpl<
          _$_NumericCharacterValidatorError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(HasUppercaseValidatorError error, String reason)
        uppercaseValidatorError,
    required TResult Function(HasLowercaseValidatorError error, String reason)
        lowercaseValidatorError,
    required TResult Function(
            HasNumericLetterValidatorError error, String reason)
        numericCharacterValidatorError,
    required TResult Function(
            HasSpecialCharacterValidatorError error, String reason)
        specialCharacterValidatorError,
  }) {
    return numericCharacterValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult? Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult? Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult? Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult? Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
  }) {
    return numericCharacterValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (numericCharacterValidatorError != null) {
      return numericCharacterValidatorError(error, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_UppercaseValidatorError value)
        uppercaseValidatorError,
    required TResult Function(_LowercaseValidatorError value)
        lowercaseValidatorError,
    required TResult Function(_NumericCharacterValidatorError value)
        numericCharacterValidatorError,
    required TResult Function(_SpecialCharacterValidatorError value)
        specialCharacterValidatorError,
  }) {
    return numericCharacterValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthValidatorError value)? lengthValidatorError,
    TResult? Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult? Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult? Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult? Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
  }) {
    return numericCharacterValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (numericCharacterValidatorError != null) {
      return numericCharacterValidatorError(this);
    }
    return orElse();
  }
}

abstract class _NumericCharacterValidatorError extends PasswordValidatorError {
  factory _NumericCharacterValidatorError(
      final HasNumericLetterValidatorError error,
      {required final String reason}) = _$_NumericCharacterValidatorError;
  _NumericCharacterValidatorError._() : super._();

  @override
  HasNumericLetterValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_NumericCharacterValidatorErrorCopyWith<_$_NumericCharacterValidatorError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SpecialCharacterValidatorErrorCopyWith<$Res>
    implements $PasswordValidatorErrorCopyWith<$Res> {
  factory _$$_SpecialCharacterValidatorErrorCopyWith(
          _$_SpecialCharacterValidatorError value,
          $Res Function(_$_SpecialCharacterValidatorError) then) =
      __$$_SpecialCharacterValidatorErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HasSpecialCharacterValidatorError error, String reason});

  $HasSpecialCharacterValidatorErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$_SpecialCharacterValidatorErrorCopyWithImpl<$Res>
    extends _$PasswordValidatorErrorCopyWithImpl<$Res,
        _$_SpecialCharacterValidatorError>
    implements _$$_SpecialCharacterValidatorErrorCopyWith<$Res> {
  __$$_SpecialCharacterValidatorErrorCopyWithImpl(
      _$_SpecialCharacterValidatorError _value,
      $Res Function(_$_SpecialCharacterValidatorError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? reason = null,
  }) {
    return _then(_$_SpecialCharacterValidatorError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HasSpecialCharacterValidatorError,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HasSpecialCharacterValidatorErrorCopyWith<$Res> get error {
    return $HasSpecialCharacterValidatorErrorCopyWith<$Res>(_value.error,
        (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_SpecialCharacterValidatorError
    extends _SpecialCharacterValidatorError {
  _$_SpecialCharacterValidatorError(this.error, {required this.reason})
      : super._();

  @override
  final HasSpecialCharacterValidatorError error;
  @override
  final String reason;

  @override
  String toString() {
    return 'PasswordValidatorError.specialCharacterValidatorError(error: $error, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpecialCharacterValidatorErrorCopyWith<_$_SpecialCharacterValidatorError>
      get copyWith => __$$_SpecialCharacterValidatorErrorCopyWithImpl<
          _$_SpecialCharacterValidatorError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextLengthValidatorError error, String reason)
        lengthValidatorError,
    required TResult Function(HasUppercaseValidatorError error, String reason)
        uppercaseValidatorError,
    required TResult Function(HasLowercaseValidatorError error, String reason)
        lowercaseValidatorError,
    required TResult Function(
            HasNumericLetterValidatorError error, String reason)
        numericCharacterValidatorError,
    required TResult Function(
            HasSpecialCharacterValidatorError error, String reason)
        specialCharacterValidatorError,
  }) {
    return specialCharacterValidatorError(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult? Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult? Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult? Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult? Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
  }) {
    return specialCharacterValidatorError?.call(error, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextLengthValidatorError error, String reason)?
        lengthValidatorError,
    TResult Function(HasUppercaseValidatorError error, String reason)?
        uppercaseValidatorError,
    TResult Function(HasLowercaseValidatorError error, String reason)?
        lowercaseValidatorError,
    TResult Function(HasNumericLetterValidatorError error, String reason)?
        numericCharacterValidatorError,
    TResult Function(HasSpecialCharacterValidatorError error, String reason)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (specialCharacterValidatorError != null) {
      return specialCharacterValidatorError(error, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthValidatorError value) lengthValidatorError,
    required TResult Function(_UppercaseValidatorError value)
        uppercaseValidatorError,
    required TResult Function(_LowercaseValidatorError value)
        lowercaseValidatorError,
    required TResult Function(_NumericCharacterValidatorError value)
        numericCharacterValidatorError,
    required TResult Function(_SpecialCharacterValidatorError value)
        specialCharacterValidatorError,
  }) {
    return specialCharacterValidatorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthValidatorError value)? lengthValidatorError,
    TResult? Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult? Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult? Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult? Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
  }) {
    return specialCharacterValidatorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthValidatorError value)? lengthValidatorError,
    TResult Function(_UppercaseValidatorError value)? uppercaseValidatorError,
    TResult Function(_LowercaseValidatorError value)? lowercaseValidatorError,
    TResult Function(_NumericCharacterValidatorError value)?
        numericCharacterValidatorError,
    TResult Function(_SpecialCharacterValidatorError value)?
        specialCharacterValidatorError,
    required TResult orElse(),
  }) {
    if (specialCharacterValidatorError != null) {
      return specialCharacterValidatorError(this);
    }
    return orElse();
  }
}

abstract class _SpecialCharacterValidatorError extends PasswordValidatorError {
  factory _SpecialCharacterValidatorError(
      final HasSpecialCharacterValidatorError error,
      {required final String reason}) = _$_SpecialCharacterValidatorError;
  _SpecialCharacterValidatorError._() : super._();

  @override
  HasSpecialCharacterValidatorError get error;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_SpecialCharacterValidatorErrorCopyWith<_$_SpecialCharacterValidatorError>
      get copyWith => throw _privateConstructorUsedError;
}
