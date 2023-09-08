// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_length_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListLengthValidatorError<V> {
  List<V> get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, List<V> failedValue) lengthIsLessThanMin,
    required TResult Function(int max, List<V> failedValue)
        lengthIsGreaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int min, List<V> failedValue)? lengthIsLessThanMin,
    TResult? Function(int max, List<V> failedValue)? lengthIsGreaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, List<V> failedValue)? lengthIsLessThanMin,
    TResult Function(int max, List<V> failedValue)? lengthIsGreaterThanMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthIsLessThanMin<V> value)
        lengthIsLessThanMin,
    required TResult Function(_LengthIsGreaterThanMax<V> value)
        lengthIsGreaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthIsLessThanMin<V> value)? lengthIsLessThanMin,
    TResult? Function(_LengthIsGreaterThanMax<V> value)? lengthIsGreaterThanMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthIsLessThanMin<V> value)? lengthIsLessThanMin,
    TResult Function(_LengthIsGreaterThanMax<V> value)? lengthIsGreaterThanMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListLengthValidatorErrorCopyWith<V, ListLengthValidatorError<V>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListLengthValidatorErrorCopyWith<V, $Res> {
  factory $ListLengthValidatorErrorCopyWith(ListLengthValidatorError<V> value,
          $Res Function(ListLengthValidatorError<V>) then) =
      _$ListLengthValidatorErrorCopyWithImpl<V, $Res,
          ListLengthValidatorError<V>>;
  @useResult
  $Res call({List<V> failedValue});
}

/// @nodoc
class _$ListLengthValidatorErrorCopyWithImpl<V, $Res,
        $Val extends ListLengthValidatorError<V>>
    implements $ListLengthValidatorErrorCopyWith<V, $Res> {
  _$ListLengthValidatorErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as List<V>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LengthIsLessThanMinCopyWith<V, $Res>
    implements $ListLengthValidatorErrorCopyWith<V, $Res> {
  factory _$$_LengthIsLessThanMinCopyWith(_$_LengthIsLessThanMin<V> value,
          $Res Function(_$_LengthIsLessThanMin<V>) then) =
      __$$_LengthIsLessThanMinCopyWithImpl<V, $Res>;
  @override
  @useResult
  $Res call({int min, List<V> failedValue});
}

/// @nodoc
class __$$_LengthIsLessThanMinCopyWithImpl<V, $Res>
    extends _$ListLengthValidatorErrorCopyWithImpl<V, $Res,
        _$_LengthIsLessThanMin<V>>
    implements _$$_LengthIsLessThanMinCopyWith<V, $Res> {
  __$$_LengthIsLessThanMinCopyWithImpl(_$_LengthIsLessThanMin<V> _value,
      $Res Function(_$_LengthIsLessThanMin<V>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? failedValue = null,
  }) {
    return _then(_$_LengthIsLessThanMin<V>(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      failedValue: null == failedValue
          ? _value._failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as List<V>,
    ));
  }
}

/// @nodoc

class _$_LengthIsLessThanMin<V> implements _LengthIsLessThanMin<V> {
  const _$_LengthIsLessThanMin(
      {required this.min, required final List<V> failedValue})
      : _failedValue = failedValue;

  @override
  final int min;
  final List<V> _failedValue;
  @override
  List<V> get failedValue {
    if (_failedValue is EqualUnmodifiableListView) return _failedValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failedValue);
  }

  @override
  String toString() {
    return 'ListLengthValidatorError<$V>.lengthIsLessThanMin(min: $min, failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LengthIsLessThanMin<V> &&
            (identical(other.min, min) || other.min == min) &&
            const DeepCollectionEquality()
                .equals(other._failedValue, _failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, min, const DeepCollectionEquality().hash(_failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LengthIsLessThanMinCopyWith<V, _$_LengthIsLessThanMin<V>> get copyWith =>
      __$$_LengthIsLessThanMinCopyWithImpl<V, _$_LengthIsLessThanMin<V>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, List<V> failedValue) lengthIsLessThanMin,
    required TResult Function(int max, List<V> failedValue)
        lengthIsGreaterThanMax,
  }) {
    return lengthIsLessThanMin(min, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int min, List<V> failedValue)? lengthIsLessThanMin,
    TResult? Function(int max, List<V> failedValue)? lengthIsGreaterThanMax,
  }) {
    return lengthIsLessThanMin?.call(min, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, List<V> failedValue)? lengthIsLessThanMin,
    TResult Function(int max, List<V> failedValue)? lengthIsGreaterThanMax,
    required TResult orElse(),
  }) {
    if (lengthIsLessThanMin != null) {
      return lengthIsLessThanMin(min, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthIsLessThanMin<V> value)
        lengthIsLessThanMin,
    required TResult Function(_LengthIsGreaterThanMax<V> value)
        lengthIsGreaterThanMax,
  }) {
    return lengthIsLessThanMin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthIsLessThanMin<V> value)? lengthIsLessThanMin,
    TResult? Function(_LengthIsGreaterThanMax<V> value)? lengthIsGreaterThanMax,
  }) {
    return lengthIsLessThanMin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthIsLessThanMin<V> value)? lengthIsLessThanMin,
    TResult Function(_LengthIsGreaterThanMax<V> value)? lengthIsGreaterThanMax,
    required TResult orElse(),
  }) {
    if (lengthIsLessThanMin != null) {
      return lengthIsLessThanMin(this);
    }
    return orElse();
  }
}

abstract class _LengthIsLessThanMin<V> implements ListLengthValidatorError<V> {
  const factory _LengthIsLessThanMin(
      {required final int min,
      required final List<V> failedValue}) = _$_LengthIsLessThanMin<V>;

  int get min;
  @override
  List<V> get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_LengthIsLessThanMinCopyWith<V, _$_LengthIsLessThanMin<V>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LengthIsGreaterThanMaxCopyWith<V, $Res>
    implements $ListLengthValidatorErrorCopyWith<V, $Res> {
  factory _$$_LengthIsGreaterThanMaxCopyWith(_$_LengthIsGreaterThanMax<V> value,
          $Res Function(_$_LengthIsGreaterThanMax<V>) then) =
      __$$_LengthIsGreaterThanMaxCopyWithImpl<V, $Res>;
  @override
  @useResult
  $Res call({int max, List<V> failedValue});
}

/// @nodoc
class __$$_LengthIsGreaterThanMaxCopyWithImpl<V, $Res>
    extends _$ListLengthValidatorErrorCopyWithImpl<V, $Res,
        _$_LengthIsGreaterThanMax<V>>
    implements _$$_LengthIsGreaterThanMaxCopyWith<V, $Res> {
  __$$_LengthIsGreaterThanMaxCopyWithImpl(_$_LengthIsGreaterThanMax<V> _value,
      $Res Function(_$_LengthIsGreaterThanMax<V>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? max = null,
    Object? failedValue = null,
  }) {
    return _then(_$_LengthIsGreaterThanMax<V>(
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      failedValue: null == failedValue
          ? _value._failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as List<V>,
    ));
  }
}

/// @nodoc

class _$_LengthIsGreaterThanMax<V> implements _LengthIsGreaterThanMax<V> {
  const _$_LengthIsGreaterThanMax(
      {required this.max, required final List<V> failedValue})
      : _failedValue = failedValue;

  @override
  final int max;
  final List<V> _failedValue;
  @override
  List<V> get failedValue {
    if (_failedValue is EqualUnmodifiableListView) return _failedValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failedValue);
  }

  @override
  String toString() {
    return 'ListLengthValidatorError<$V>.lengthIsGreaterThanMax(max: $max, failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LengthIsGreaterThanMax<V> &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality()
                .equals(other._failedValue, _failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, max, const DeepCollectionEquality().hash(_failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LengthIsGreaterThanMaxCopyWith<V, _$_LengthIsGreaterThanMax<V>>
      get copyWith => __$$_LengthIsGreaterThanMaxCopyWithImpl<V,
          _$_LengthIsGreaterThanMax<V>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int min, List<V> failedValue) lengthIsLessThanMin,
    required TResult Function(int max, List<V> failedValue)
        lengthIsGreaterThanMax,
  }) {
    return lengthIsGreaterThanMax(max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int min, List<V> failedValue)? lengthIsLessThanMin,
    TResult? Function(int max, List<V> failedValue)? lengthIsGreaterThanMax,
  }) {
    return lengthIsGreaterThanMax?.call(max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int min, List<V> failedValue)? lengthIsLessThanMin,
    TResult Function(int max, List<V> failedValue)? lengthIsGreaterThanMax,
    required TResult orElse(),
  }) {
    if (lengthIsGreaterThanMax != null) {
      return lengthIsGreaterThanMax(max, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LengthIsLessThanMin<V> value)
        lengthIsLessThanMin,
    required TResult Function(_LengthIsGreaterThanMax<V> value)
        lengthIsGreaterThanMax,
  }) {
    return lengthIsGreaterThanMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LengthIsLessThanMin<V> value)? lengthIsLessThanMin,
    TResult? Function(_LengthIsGreaterThanMax<V> value)? lengthIsGreaterThanMax,
  }) {
    return lengthIsGreaterThanMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LengthIsLessThanMin<V> value)? lengthIsLessThanMin,
    TResult Function(_LengthIsGreaterThanMax<V> value)? lengthIsGreaterThanMax,
    required TResult orElse(),
  }) {
    if (lengthIsGreaterThanMax != null) {
      return lengthIsGreaterThanMax(this);
    }
    return orElse();
  }
}

abstract class _LengthIsGreaterThanMax<V>
    implements ListLengthValidatorError<V> {
  const factory _LengthIsGreaterThanMax(
      {required final int max,
      required final List<V> failedValue}) = _$_LengthIsGreaterThanMax<V>;

  int get max;
  @override
  List<V> get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_LengthIsGreaterThanMaxCopyWith<V, _$_LengthIsGreaterThanMax<V>>
      get copyWith => throw _privateConstructorUsedError;
}
