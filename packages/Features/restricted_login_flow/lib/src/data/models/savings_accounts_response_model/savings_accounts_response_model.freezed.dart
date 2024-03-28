// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'savings_accounts_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavingsAccountsResponseModel _$SavingsAccountsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SavingsAccountsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SavingsAccountsResponseModel {
  List<SavingsAccount> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavingsAccountsResponseModelCopyWith<SavingsAccountsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingsAccountsResponseModelCopyWith<$Res> {
  factory $SavingsAccountsResponseModelCopyWith(
          SavingsAccountsResponseModel value,
          $Res Function(SavingsAccountsResponseModel) then) =
      _$SavingsAccountsResponseModelCopyWithImpl<$Res>;
  $Res call({List<SavingsAccount> data});
}

/// @nodoc
class _$SavingsAccountsResponseModelCopyWithImpl<$Res>
    implements $SavingsAccountsResponseModelCopyWith<$Res> {
  _$SavingsAccountsResponseModelCopyWithImpl(this._value, this._then);

  final SavingsAccountsResponseModel _value;
  // ignore: unused_field
  final $Res Function(SavingsAccountsResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SavingsAccount>,
    ));
  }
}

/// @nodoc
abstract class _$$_SavingsAccountsResponseModelCopyWith<$Res>
    implements $SavingsAccountsResponseModelCopyWith<$Res> {
  factory _$$_SavingsAccountsResponseModelCopyWith(
          _$_SavingsAccountsResponseModel value,
          $Res Function(_$_SavingsAccountsResponseModel) then) =
      __$$_SavingsAccountsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SavingsAccount> data});
}

/// @nodoc
class __$$_SavingsAccountsResponseModelCopyWithImpl<$Res>
    extends _$SavingsAccountsResponseModelCopyWithImpl<$Res>
    implements _$$_SavingsAccountsResponseModelCopyWith<$Res> {
  __$$_SavingsAccountsResponseModelCopyWithImpl(
      _$_SavingsAccountsResponseModel _value,
      $Res Function(_$_SavingsAccountsResponseModel) _then)
      : super(_value, (v) => _then(v as _$_SavingsAccountsResponseModel));

  @override
  _$_SavingsAccountsResponseModel get _value =>
      super._value as _$_SavingsAccountsResponseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SavingsAccountsResponseModel(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SavingsAccount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavingsAccountsResponseModel extends _SavingsAccountsResponseModel {
  const _$_SavingsAccountsResponseModel(
      {required final List<SavingsAccount> data})
      : _data = data,
        super._();

  factory _$_SavingsAccountsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavingsAccountsResponseModelFromJson(json);

  final List<SavingsAccount> _data;
  @override
  List<SavingsAccount> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SavingsAccountsResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingsAccountsResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SavingsAccountsResponseModelCopyWith<_$_SavingsAccountsResponseModel>
      get copyWith => __$$_SavingsAccountsResponseModelCopyWithImpl<
          _$_SavingsAccountsResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavingsAccountsResponseModelToJson(
      this,
    );
  }
}

abstract class _SavingsAccountsResponseModel
    extends SavingsAccountsResponseModel {
  const factory _SavingsAccountsResponseModel(
          {required final List<SavingsAccount> data}) =
      _$_SavingsAccountsResponseModel;
  const _SavingsAccountsResponseModel._() : super._();

  factory _SavingsAccountsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SavingsAccountsResponseModel.fromJson;

  @override
  List<SavingsAccount> get data;
  @override
  @JsonKey(ignore: true)
  _$$_SavingsAccountsResponseModelCopyWith<_$_SavingsAccountsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
