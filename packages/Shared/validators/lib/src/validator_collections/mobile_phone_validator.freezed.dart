// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mobile_phone_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MobilePhoneValidatorError {
  String get failedValue => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String reason)
        invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MobilePhoneValidatorErrorCopyWith<MobilePhoneValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobilePhoneValidatorErrorCopyWith<$Res> {
  factory $MobilePhoneValidatorErrorCopyWith(MobilePhoneValidatorError value,
          $Res Function(MobilePhoneValidatorError) then) =
      _$MobilePhoneValidatorErrorCopyWithImpl<$Res>;
  $Res call({String failedValue, String reason});
}

/// @nodoc
class _$MobilePhoneValidatorErrorCopyWithImpl<$Res>
    implements $MobilePhoneValidatorErrorCopyWith<$Res> {
  _$MobilePhoneValidatorErrorCopyWithImpl(this._value, this._then);

  final MobilePhoneValidatorError _value;
  // ignore: unused_field
  final $Res Function(MobilePhoneValidatorError) _then;

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
abstract class _$$_InvalidEmailCopyWith<$Res>
    implements $MobilePhoneValidatorErrorCopyWith<$Res> {
  factory _$$_InvalidEmailCopyWith(
          _$_InvalidEmail value, $Res Function(_$_InvalidEmail) then) =
      __$$_InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue, String reason});
}

/// @nodoc
class __$$_InvalidEmailCopyWithImpl<$Res>
    extends _$MobilePhoneValidatorErrorCopyWithImpl<$Res>
    implements _$$_InvalidEmailCopyWith<$Res> {
  __$$_InvalidEmailCopyWithImpl(
      _$_InvalidEmail _value, $Res Function(_$_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _$_InvalidEmail));

  @override
  _$_InvalidEmail get _value => super._value as _$_InvalidEmail;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_InvalidEmail(
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

class _$_InvalidEmail extends _InvalidEmail {
  _$_InvalidEmail(this.failedValue, {required this.reason}) : super._();

  @override
  final String failedValue;
  @override
  final String reason;

  @override
  String toString() {
    return 'MobilePhoneValidatorError.invalidPhoneNumber(failedValue: $failedValue, reason: $reason)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_InvalidEmailCopyWith<_$_InvalidEmail> get copyWith =>
      __$$_InvalidEmailCopyWithImpl<_$_InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, String reason)
        invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, String reason)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail extends MobilePhoneValidatorError {
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
