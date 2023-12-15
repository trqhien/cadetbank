// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_line_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleLineValidatorError {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) notSingleLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? notSingleLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? notSingleLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotSingleLine value) notSingleLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotSingleLine value)? notSingleLine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotSingleLine value)? notSingleLine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleLineValidatorErrorCopyWith<SingleLineValidatorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleLineValidatorErrorCopyWith<$Res> {
  factory $SingleLineValidatorErrorCopyWith(SingleLineValidatorError value,
          $Res Function(SingleLineValidatorError) then) =
      _$SingleLineValidatorErrorCopyWithImpl<$Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$SingleLineValidatorErrorCopyWithImpl<$Res>
    implements $SingleLineValidatorErrorCopyWith<$Res> {
  _$SingleLineValidatorErrorCopyWithImpl(this._value, this._then);

  final SingleLineValidatorError _value;
  // ignore: unused_field
  final $Res Function(SingleLineValidatorError) _then;

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
abstract class _$$_NotSingleLineCopyWith<$Res>
    implements $SingleLineValidatorErrorCopyWith<$Res> {
  factory _$$_NotSingleLineCopyWith(
          _$_NotSingleLine value, $Res Function(_$_NotSingleLine) then) =
      __$$_NotSingleLineCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$$_NotSingleLineCopyWithImpl<$Res>
    extends _$SingleLineValidatorErrorCopyWithImpl<$Res>
    implements _$$_NotSingleLineCopyWith<$Res> {
  __$$_NotSingleLineCopyWithImpl(
      _$_NotSingleLine _value, $Res Function(_$_NotSingleLine) _then)
      : super(_value, (v) => _then(v as _$_NotSingleLine));

  @override
  _$_NotSingleLine get _value => super._value as _$_NotSingleLine;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_NotSingleLine(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotSingleLine implements _NotSingleLine {
  const _$_NotSingleLine({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'SingleLineValidatorError.notSingleLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotSingleLine &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_NotSingleLineCopyWith<_$_NotSingleLine> get copyWith =>
      __$$_NotSingleLineCopyWithImpl<_$_NotSingleLine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) notSingleLine,
  }) {
    return notSingleLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? notSingleLine,
  }) {
    return notSingleLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? notSingleLine,
    required TResult orElse(),
  }) {
    if (notSingleLine != null) {
      return notSingleLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotSingleLine value) notSingleLine,
  }) {
    return notSingleLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotSingleLine value)? notSingleLine,
  }) {
    return notSingleLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotSingleLine value)? notSingleLine,
    required TResult orElse(),
  }) {
    if (notSingleLine != null) {
      return notSingleLine(this);
    }
    return orElse();
  }
}

abstract class _NotSingleLine implements SingleLineValidatorError {
  const factory _NotSingleLine({required final String failedValue}) =
      _$_NotSingleLine;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_NotSingleLineCopyWith<_$_NotSingleLine> get copyWith =>
      throw _privateConstructorUsedError;
}
