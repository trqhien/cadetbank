// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_length_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextLengthValidatorError {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, int? max, String failedValue)
        lessThanMin,
    required TResult Function(int? min, int max, String failedValue)
        greaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int min, int? max, String failedValue)? lessThanMin,
    TResult Function(int? min, int max, String failedValue)? greaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, int? max, String failedValue)? lessThanMin,
    TResult Function(int? min, int max, String failedValue)? greaterThanMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LessThanOrEqualToMin value) lessThanMin,
    required TResult Function(_GreaterThanMax value) greaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LessThanOrEqualToMin value)? lessThanMin,
    TResult Function(_GreaterThanMax value)? greaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LessThanOrEqualToMin value)? lessThanMin,
    TResult Function(_GreaterThanMax value)? greaterThanMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextLengthValidatorErrorCopyWith<TextLengthValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextLengthValidatorErrorCopyWith<$Res> {
  factory $TextLengthValidatorErrorCopyWith(TextLengthValidatorError value,
          $Res Function(TextLengthValidatorError) then) =
      _$TextLengthValidatorErrorCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$TextLengthValidatorErrorCopyWithImpl<$Res>
    implements $TextLengthValidatorErrorCopyWith<$Res> {
  _$TextLengthValidatorErrorCopyWithImpl(this._value, this._then);

  final TextLengthValidatorError _value;
  // ignore: unused_field
  final $Res Function(TextLengthValidatorError) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LessThanOrEqualToMinCopyWith<$Res>
    implements $TextLengthValidatorErrorCopyWith<$Res> {
  factory _$$_LessThanOrEqualToMinCopyWith(_$_LessThanOrEqualToMin value,
          $Res Function(_$_LessThanOrEqualToMin) then) =
      __$$_LessThanOrEqualToMinCopyWithImpl<$Res>;
  @override
  $Res call({int min, int? max, String failedValue});
}

/// @nodoc
class __$$_LessThanOrEqualToMinCopyWithImpl<$Res>
    extends _$TextLengthValidatorErrorCopyWithImpl<$Res>
    implements _$$_LessThanOrEqualToMinCopyWith<$Res> {
  __$$_LessThanOrEqualToMinCopyWithImpl(_$_LessThanOrEqualToMin _value,
      $Res Function(_$_LessThanOrEqualToMin) _then)
      : super(_value, (v) => _then(v as _$_LessThanOrEqualToMin));

  @override
  _$_LessThanOrEqualToMin get _value => super._value as _$_LessThanOrEqualToMin;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? failedValue = freezed,
  }) {
    return _then(_$_LessThanOrEqualToMin(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int?,
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LessThanOrEqualToMin implements _LessThanOrEqualToMin {
  const _$_LessThanOrEqualToMin(
      {required this.min, this.max, required this.failedValue});

  @override
  final int min;
  @override
  final int? max;
  @override
  final String failedValue;

  @override
  String toString() {
    return 'TextLengthValidatorError.lessThanMin(min: $min, max: $max, failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessThanOrEqualToMin &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_LessThanOrEqualToMinCopyWith<_$_LessThanOrEqualToMin> get copyWith =>
      __$$_LessThanOrEqualToMinCopyWithImpl<_$_LessThanOrEqualToMin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, int? max, String failedValue)
        lessThanMin,
    required TResult Function(int? min, int max, String failedValue)
        greaterThanMax,
  }) {
    return lessThanMin(min, max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int min, int? max, String failedValue)? lessThanMin,
    TResult Function(int? min, int max, String failedValue)? greaterThanMax,
  }) {
    return lessThanMin?.call(min, max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, int? max, String failedValue)? lessThanMin,
    TResult Function(int? min, int max, String failedValue)? greaterThanMax,
    required TResult orElse(),
  }) {
    if (lessThanMin != null) {
      return lessThanMin(min, max, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LessThanOrEqualToMin value) lessThanMin,
    required TResult Function(_GreaterThanMax value) greaterThanMax,
  }) {
    return lessThanMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LessThanOrEqualToMin value)? lessThanMin,
    TResult Function(_GreaterThanMax value)? greaterThanMax,
  }) {
    return lessThanMin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LessThanOrEqualToMin value)? lessThanMin,
    TResult Function(_GreaterThanMax value)? greaterThanMax,
    required TResult orElse(),
  }) {
    if (lessThanMin != null) {
      return lessThanMin(this);
    }
    return orElse();
  }
}

abstract class _LessThanOrEqualToMin implements TextLengthValidatorError {
  const factory _LessThanOrEqualToMin(
      {required final int min,
      final int? max,
      required final String failedValue}) = _$_LessThanOrEqualToMin;

  int get min;
  int? get max;
  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_LessThanOrEqualToMinCopyWith<_$_LessThanOrEqualToMin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GreaterThanMaxCopyWith<$Res>
    implements $TextLengthValidatorErrorCopyWith<$Res> {
  factory _$$_GreaterThanMaxCopyWith(
          _$_GreaterThanMax value, $Res Function(_$_GreaterThanMax) then) =
      __$$_GreaterThanMaxCopyWithImpl<$Res>;
  @override
  $Res call({int? min, int max, String failedValue});
}

/// @nodoc
class __$$_GreaterThanMaxCopyWithImpl<$Res>
    extends _$TextLengthValidatorErrorCopyWithImpl<$Res>
    implements _$$_GreaterThanMaxCopyWith<$Res> {
  __$$_GreaterThanMaxCopyWithImpl(
      _$_GreaterThanMax _value, $Res Function(_$_GreaterThanMax) _then)
      : super(_value, (v) => _then(v as _$_GreaterThanMax));

  @override
  _$_GreaterThanMax get _value => super._value as _$_GreaterThanMax;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? failedValue = freezed,
  }) {
    return _then(_$_GreaterThanMax(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GreaterThanMax implements _GreaterThanMax {
  const _$_GreaterThanMax(
      {this.min, required this.max, required this.failedValue});

  @override
  final int? min;
  @override
  final int max;
  @override
  final String failedValue;

  @override
  String toString() {
    return 'TextLengthValidatorError.greaterThanMax(min: $min, max: $max, failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GreaterThanMax &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_GreaterThanMaxCopyWith<_$_GreaterThanMax> get copyWith =>
      __$$_GreaterThanMaxCopyWithImpl<_$_GreaterThanMax>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, int? max, String failedValue)
        lessThanMin,
    required TResult Function(int? min, int max, String failedValue)
        greaterThanMax,
  }) {
    return greaterThanMax(min, max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int min, int? max, String failedValue)? lessThanMin,
    TResult Function(int? min, int max, String failedValue)? greaterThanMax,
  }) {
    return greaterThanMax?.call(min, max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, int? max, String failedValue)? lessThanMin,
    TResult Function(int? min, int max, String failedValue)? greaterThanMax,
    required TResult orElse(),
  }) {
    if (greaterThanMax != null) {
      return greaterThanMax(min, max, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LessThanOrEqualToMin value) lessThanMin,
    required TResult Function(_GreaterThanMax value) greaterThanMax,
  }) {
    return greaterThanMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LessThanOrEqualToMin value)? lessThanMin,
    TResult Function(_GreaterThanMax value)? greaterThanMax,
  }) {
    return greaterThanMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LessThanOrEqualToMin value)? lessThanMin,
    TResult Function(_GreaterThanMax value)? greaterThanMax,
    required TResult orElse(),
  }) {
    if (greaterThanMax != null) {
      return greaterThanMax(this);
    }
    return orElse();
  }
}

abstract class _GreaterThanMax implements TextLengthValidatorError {
  const factory _GreaterThanMax(
      {final int? min,
      required final int max,
      required final String failedValue}) = _$_GreaterThanMax;

  int? get min;
  int get max;
  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_GreaterThanMaxCopyWith<_$_GreaterThanMax> get copyWith =>
      throw _privateConstructorUsedError;
}
