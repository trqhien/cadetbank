// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkFailure networkFailure) networkFailure,
    required TResult Function(SdkFailure sdkFailure) sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_SdkFailure value) sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res> implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  final AppFailure _value;
  // ignore: unused_field
  final $Res Function(AppFailure) _then;
}

/// @nodoc
abstract class _$NetworkFailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(
          _NetworkFailure value, $Res Function(_NetworkFailure) then) =
      __$NetworkFailureCopyWithImpl<$Res>;
  $Res call({NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(
      _NetworkFailure _value, $Res Function(_NetworkFailure) _then)
      : super(_value, (v) => _then(v as _NetworkFailure));

  @override
  _NetworkFailure get _value => super._value as _NetworkFailure;

  @override
  $Res call({
    Object? networkFailure = freezed,
  }) {
    return _then(_NetworkFailure(
      networkFailure == freezed
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  @override
  $NetworkFailureCopyWith<$Res> get networkFailure {
    return $NetworkFailureCopyWith<$Res>(_value.networkFailure, (value) {
      return _then(_value.copyWith(networkFailure: value));
    });
  }
}

/// @nodoc

class _$_NetworkFailure extends _NetworkFailure {
  const _$_NetworkFailure(this.networkFailure) : super._();

  @override
  final NetworkFailure networkFailure;

  @override
  String toString() {
    return 'AppFailure.networkFailure(networkFailure: $networkFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFailure &&
            const DeepCollectionEquality()
                .equals(other.networkFailure, networkFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(networkFailure));

  @JsonKey(ignore: true)
  @override
  _$NetworkFailureCopyWith<_NetworkFailure> get copyWith =>
      __$NetworkFailureCopyWithImpl<_NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkFailure networkFailure) networkFailure,
    required TResult Function(SdkFailure sdkFailure) sdkFailure,
  }) {
    return networkFailure(this.networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
  }) {
    return networkFailure?.call(this.networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this.networkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_SdkFailure value) sdkFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure extends AppFailure {
  const factory _NetworkFailure(final NetworkFailure networkFailure) =
      _$_NetworkFailure;
  const _NetworkFailure._() : super._();

  NetworkFailure get networkFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NetworkFailureCopyWith<_NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SdkFailureCopyWith<$Res> {
  factory _$SdkFailureCopyWith(
          _SdkFailure value, $Res Function(_SdkFailure) then) =
      __$SdkFailureCopyWithImpl<$Res>;
  $Res call({SdkFailure sdkFailure});

  $SdkFailureCopyWith<$Res> get sdkFailure;
}

/// @nodoc
class __$SdkFailureCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
    implements _$SdkFailureCopyWith<$Res> {
  __$SdkFailureCopyWithImpl(
      _SdkFailure _value, $Res Function(_SdkFailure) _then)
      : super(_value, (v) => _then(v as _SdkFailure));

  @override
  _SdkFailure get _value => super._value as _SdkFailure;

  @override
  $Res call({
    Object? sdkFailure = freezed,
  }) {
    return _then(_SdkFailure(
      sdkFailure == freezed
          ? _value.sdkFailure
          : sdkFailure // ignore: cast_nullable_to_non_nullable
              as SdkFailure,
    ));
  }

  @override
  $SdkFailureCopyWith<$Res> get sdkFailure {
    return $SdkFailureCopyWith<$Res>(_value.sdkFailure, (value) {
      return _then(_value.copyWith(sdkFailure: value));
    });
  }
}

/// @nodoc

class _$_SdkFailure extends _SdkFailure {
  const _$_SdkFailure(this.sdkFailure) : super._();

  @override
  final SdkFailure sdkFailure;

  @override
  String toString() {
    return 'AppFailure.sdkFailure(sdkFailure: $sdkFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SdkFailure &&
            const DeepCollectionEquality()
                .equals(other.sdkFailure, sdkFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sdkFailure));

  @JsonKey(ignore: true)
  @override
  _$SdkFailureCopyWith<_SdkFailure> get copyWith =>
      __$SdkFailureCopyWithImpl<_SdkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkFailure networkFailure) networkFailure,
    required TResult Function(SdkFailure sdkFailure) sdkFailure,
  }) {
    return sdkFailure(this.sdkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
  }) {
    return sdkFailure?.call(this.sdkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
    required TResult orElse(),
  }) {
    if (sdkFailure != null) {
      return sdkFailure(this.sdkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_SdkFailure value) sdkFailure,
  }) {
    return sdkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
  }) {
    return sdkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
    required TResult orElse(),
  }) {
    if (sdkFailure != null) {
      return sdkFailure(this);
    }
    return orElse();
  }
}

abstract class _SdkFailure extends AppFailure {
  const factory _SdkFailure(final SdkFailure sdkFailure) = _$_SdkFailure;
  const _SdkFailure._() : super._();

  SdkFailure get sdkFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SdkFailureCopyWith<_SdkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
