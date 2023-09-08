// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailValidatorError {
  String get failedValue => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String reason) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue, String reason)? invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailValidatorErrorCopyWith<EmailValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailValidatorErrorCopyWith<$Res> {
  factory $EmailValidatorErrorCopyWith(
          EmailValidatorError value, $Res Function(EmailValidatorError) then) =
      _$EmailValidatorErrorCopyWithImpl<$Res, EmailValidatorError>;
  @useResult
  $Res call({String failedValue, String reason});
}

/// @nodoc
class _$EmailValidatorErrorCopyWithImpl<$Res, $Val extends EmailValidatorError>
    implements $EmailValidatorErrorCopyWith<$Res> {
  _$EmailValidatorErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvalidEmailCopyWith<$Res>
    implements $EmailValidatorErrorCopyWith<$Res> {
  factory _$$_InvalidEmailCopyWith(
          _$_InvalidEmail value, $Res Function(_$_InvalidEmail) then) =
      __$$_InvalidEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue, String reason});
}

/// @nodoc
class __$$_InvalidEmailCopyWithImpl<$Res>
    extends _$EmailValidatorErrorCopyWithImpl<$Res, _$_InvalidEmail>
    implements _$$_InvalidEmailCopyWith<$Res> {
  __$$_InvalidEmailCopyWithImpl(
      _$_InvalidEmail _value, $Res Function(_$_InvalidEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? reason = null,
  }) {
    return _then(_$_InvalidEmail(
      null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail extends _InvalidEmail {
  _$_InvalidEmail(this.failedValue, {required this.reason}) : super._();

  @override
  final String failedValue;
  @override
  final String reason;

  @override
  String toString() {
    return 'EmailValidatorError.invalidEmail(failedValue: $failedValue, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidEmailCopyWith<_$_InvalidEmail> get copyWith =>
      __$$_InvalidEmailCopyWithImpl<_$_InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String reason) invalidEmail,
  }) {
    return invalidEmail(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue, String reason)? invalidEmail,
  }) {
    return invalidEmail?.call(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail extends EmailValidatorError {
  factory _InvalidEmail(final String failedValue,
      {required final String reason}) = _$_InvalidEmail;
  _InvalidEmail._() : super._();

  @override
  String get failedValue;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidEmailCopyWith<_$_InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}
