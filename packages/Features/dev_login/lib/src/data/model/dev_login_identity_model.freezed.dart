// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dev_login_identity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DevLoginIdentityModel _$DevLoginIdentityModelFromJson(
    Map<String, dynamic> json) {
  return _DevLoginIdentityModel.fromJson(json);
}

/// @nodoc
mixin _$DevLoginIdentityModel {
  String get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevLoginIdentityModelCopyWith<DevLoginIdentityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevLoginIdentityModelCopyWith<$Res> {
  factory $DevLoginIdentityModelCopyWith(DevLoginIdentityModel value,
          $Res Function(DevLoginIdentityModel) then) =
      _$DevLoginIdentityModelCopyWithImpl<$Res>;
  $Res call({String value, String type});
}

/// @nodoc
class _$DevLoginIdentityModelCopyWithImpl<$Res>
    implements $DevLoginIdentityModelCopyWith<$Res> {
  _$DevLoginIdentityModelCopyWithImpl(this._value, this._then);

  final DevLoginIdentityModel _value;
  // ignore: unused_field
  final $Res Function(DevLoginIdentityModel) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DevLoginIdentityModelCopyWith<$Res>
    implements $DevLoginIdentityModelCopyWith<$Res> {
  factory _$$_DevLoginIdentityModelCopyWith(_$_DevLoginIdentityModel value,
          $Res Function(_$_DevLoginIdentityModel) then) =
      __$$_DevLoginIdentityModelCopyWithImpl<$Res>;
  @override
  $Res call({String value, String type});
}

/// @nodoc
class __$$_DevLoginIdentityModelCopyWithImpl<$Res>
    extends _$DevLoginIdentityModelCopyWithImpl<$Res>
    implements _$$_DevLoginIdentityModelCopyWith<$Res> {
  __$$_DevLoginIdentityModelCopyWithImpl(_$_DevLoginIdentityModel _value,
      $Res Function(_$_DevLoginIdentityModel) _then)
      : super(_value, (v) => _then(v as _$_DevLoginIdentityModel));

  @override
  _$_DevLoginIdentityModel get _value =>
      super._value as _$_DevLoginIdentityModel;

  @override
  $Res call({
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_DevLoginIdentityModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DevLoginIdentityModel implements _DevLoginIdentityModel {
  const _$_DevLoginIdentityModel({required this.value, required this.type});

  factory _$_DevLoginIdentityModel.fromJson(Map<String, dynamic> json) =>
      _$$_DevLoginIdentityModelFromJson(json);

  @override
  final String value;
  @override
  final String type;

  @override
  String toString() {
    return 'DevLoginIdentityModel(value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DevLoginIdentityModel &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_DevLoginIdentityModelCopyWith<_$_DevLoginIdentityModel> get copyWith =>
      __$$_DevLoginIdentityModelCopyWithImpl<_$_DevLoginIdentityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevLoginIdentityModelToJson(
      this,
    );
  }
}

abstract class _DevLoginIdentityModel implements DevLoginIdentityModel {
  const factory _DevLoginIdentityModel(
      {required final String value,
      required final String type}) = _$_DevLoginIdentityModel;

  factory _DevLoginIdentityModel.fromJson(Map<String, dynamic> json) =
      _$_DevLoginIdentityModel.fromJson;

  @override
  String get value;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_DevLoginIdentityModelCopyWith<_$_DevLoginIdentityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
