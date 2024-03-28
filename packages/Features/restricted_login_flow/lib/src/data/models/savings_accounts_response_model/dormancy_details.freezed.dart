// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dormancy_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DormancyDetails _$DormancyDetailsFromJson(Map<String, dynamic> json) {
  return _DormancyDetails.fromJson(json);
}

/// @nodoc
mixin _$DormancyDetails {
  double? get lastBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DormancyDetailsCopyWith<DormancyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DormancyDetailsCopyWith<$Res> {
  factory $DormancyDetailsCopyWith(
          DormancyDetails value, $Res Function(DormancyDetails) then) =
      _$DormancyDetailsCopyWithImpl<$Res>;
  $Res call({double? lastBalance});
}

/// @nodoc
class _$DormancyDetailsCopyWithImpl<$Res>
    implements $DormancyDetailsCopyWith<$Res> {
  _$DormancyDetailsCopyWithImpl(this._value, this._then);

  final DormancyDetails _value;
  // ignore: unused_field
  final $Res Function(DormancyDetails) _then;

  @override
  $Res call({
    Object? lastBalance = freezed,
  }) {
    return _then(_value.copyWith(
      lastBalance: lastBalance == freezed
          ? _value.lastBalance
          : lastBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_DormancyDetailsCopyWith<$Res>
    implements $DormancyDetailsCopyWith<$Res> {
  factory _$$_DormancyDetailsCopyWith(
          _$_DormancyDetails value, $Res Function(_$_DormancyDetails) then) =
      __$$_DormancyDetailsCopyWithImpl<$Res>;
  @override
  $Res call({double? lastBalance});
}

/// @nodoc
class __$$_DormancyDetailsCopyWithImpl<$Res>
    extends _$DormancyDetailsCopyWithImpl<$Res>
    implements _$$_DormancyDetailsCopyWith<$Res> {
  __$$_DormancyDetailsCopyWithImpl(
      _$_DormancyDetails _value, $Res Function(_$_DormancyDetails) _then)
      : super(_value, (v) => _then(v as _$_DormancyDetails));

  @override
  _$_DormancyDetails get _value => super._value as _$_DormancyDetails;

  @override
  $Res call({
    Object? lastBalance = freezed,
  }) {
    return _then(_$_DormancyDetails(
      lastBalance: lastBalance == freezed
          ? _value.lastBalance
          : lastBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DormancyDetails extends _DormancyDetails {
  const _$_DormancyDetails({this.lastBalance}) : super._();

  factory _$_DormancyDetails.fromJson(Map<String, dynamic> json) =>
      _$$_DormancyDetailsFromJson(json);

  @override
  final double? lastBalance;

  @override
  String toString() {
    return 'DormancyDetails(lastBalance: $lastBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DormancyDetails &&
            const DeepCollectionEquality()
                .equals(other.lastBalance, lastBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lastBalance));

  @JsonKey(ignore: true)
  @override
  _$$_DormancyDetailsCopyWith<_$_DormancyDetails> get copyWith =>
      __$$_DormancyDetailsCopyWithImpl<_$_DormancyDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DormancyDetailsToJson(
      this,
    );
  }
}

abstract class _DormancyDetails extends DormancyDetails {
  const factory _DormancyDetails({final double? lastBalance}) =
      _$_DormancyDetails;
  const _DormancyDetails._() : super._();

  factory _DormancyDetails.fromJson(Map<String, dynamic> json) =
      _$_DormancyDetails.fromJson;

  @override
  double? get lastBalance;
  @override
  @JsonKey(ignore: true)
  _$$_DormancyDetailsCopyWith<_$_DormancyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
