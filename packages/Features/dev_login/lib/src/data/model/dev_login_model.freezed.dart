// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dev_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DevLoginModel _$DevLoginModelFromJson(Map<String, dynamic> json) {
  return _DevLoginModel.fromJson(json);
}

/// @nodoc
mixin _$DevLoginModel {
  String get password => throw _privateConstructorUsedError;
  DevLoginIdentityModel get identity => throw _privateConstructorUsedError;
  @JsonValue('device_token')
  String get deviceToken => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevLoginModelCopyWith<DevLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevLoginModelCopyWith<$Res> {
  factory $DevLoginModelCopyWith(
          DevLoginModel value, $Res Function(DevLoginModel) then) =
      _$DevLoginModelCopyWithImpl<$Res>;
  $Res call(
      {String password,
      DevLoginIdentityModel identity,
      @JsonValue('device_token') String deviceToken,
      String source});

  $DevLoginIdentityModelCopyWith<$Res> get identity;
}

/// @nodoc
class _$DevLoginModelCopyWithImpl<$Res>
    implements $DevLoginModelCopyWith<$Res> {
  _$DevLoginModelCopyWithImpl(this._value, this._then);

  final DevLoginModel _value;
  // ignore: unused_field
  final $Res Function(DevLoginModel) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? identity = freezed,
    Object? deviceToken = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as DevLoginIdentityModel,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DevLoginIdentityModelCopyWith<$Res> get identity {
    return $DevLoginIdentityModelCopyWith<$Res>(_value.identity, (value) {
      return _then(_value.copyWith(identity: value));
    });
  }
}

/// @nodoc
abstract class _$$_DevLoginModelCopyWith<$Res>
    implements $DevLoginModelCopyWith<$Res> {
  factory _$$_DevLoginModelCopyWith(
          _$_DevLoginModel value, $Res Function(_$_DevLoginModel) then) =
      __$$_DevLoginModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String password,
      DevLoginIdentityModel identity,
      @JsonValue('device_token') String deviceToken,
      String source});

  @override
  $DevLoginIdentityModelCopyWith<$Res> get identity;
}

/// @nodoc
class __$$_DevLoginModelCopyWithImpl<$Res>
    extends _$DevLoginModelCopyWithImpl<$Res>
    implements _$$_DevLoginModelCopyWith<$Res> {
  __$$_DevLoginModelCopyWithImpl(
      _$_DevLoginModel _value, $Res Function(_$_DevLoginModel) _then)
      : super(_value, (v) => _then(v as _$_DevLoginModel));

  @override
  _$_DevLoginModel get _value => super._value as _$_DevLoginModel;

  @override
  $Res call({
    Object? password = freezed,
    Object? identity = freezed,
    Object? deviceToken = freezed,
    Object? source = freezed,
  }) {
    return _then(_$_DevLoginModel(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      identity: identity == freezed
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as DevLoginIdentityModel,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DevLoginModel implements _DevLoginModel {
  const _$_DevLoginModel(
      {required this.password,
      required this.identity,
      @JsonValue('device_token') required this.deviceToken,
      required this.source});

  factory _$_DevLoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_DevLoginModelFromJson(json);

  @override
  final String password;
  @override
  final DevLoginIdentityModel identity;
  @override
  @JsonValue('device_token')
  final String deviceToken;
  @override
  final String source;

  @override
  String toString() {
    return 'DevLoginModel(password: $password, identity: $identity, deviceToken: $deviceToken, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DevLoginModel &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.identity, identity) &&
            const DeepCollectionEquality()
                .equals(other.deviceToken, deviceToken) &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(identity),
      const DeepCollectionEquality().hash(deviceToken),
      const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$_DevLoginModelCopyWith<_$_DevLoginModel> get copyWith =>
      __$$_DevLoginModelCopyWithImpl<_$_DevLoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevLoginModelToJson(
      this,
    );
  }
}

abstract class _DevLoginModel implements DevLoginModel {
  const factory _DevLoginModel(
      {required final String password,
      required final DevLoginIdentityModel identity,
      @JsonValue('device_token') required final String deviceToken,
      required final String source}) = _$_DevLoginModel;

  factory _DevLoginModel.fromJson(Map<String, dynamic> json) =
      _$_DevLoginModel.fromJson;

  @override
  String get password;
  @override
  DevLoginIdentityModel get identity;
  @override
  @JsonValue('device_token')
  String get deviceToken;
  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$_DevLoginModelCopyWith<_$_DevLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
