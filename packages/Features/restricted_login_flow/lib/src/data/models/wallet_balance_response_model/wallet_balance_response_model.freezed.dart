// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_balance_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletBalanceResponseModel _$WalletBalanceResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WalletBalanceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WalletBalanceResponseModel {
// ignore: invalid_annotation_target
  @JsonKey(name: JsonKeys.currentBalance)
  Amount get currentBalance =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: JsonKeys.availableBalance)
  Amount get availableBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletBalanceResponseModelCopyWith<WalletBalanceResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceResponseModelCopyWith<$Res> {
  factory $WalletBalanceResponseModelCopyWith(WalletBalanceResponseModel value,
          $Res Function(WalletBalanceResponseModel) then) =
      _$WalletBalanceResponseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: JsonKeys.currentBalance) Amount currentBalance,
      @JsonKey(name: JsonKeys.availableBalance) Amount availableBalance});

  $AmountCopyWith<$Res> get currentBalance;
  $AmountCopyWith<$Res> get availableBalance;
}

/// @nodoc
class _$WalletBalanceResponseModelCopyWithImpl<$Res>
    implements $WalletBalanceResponseModelCopyWith<$Res> {
  _$WalletBalanceResponseModelCopyWithImpl(this._value, this._then);

  final WalletBalanceResponseModel _value;
  // ignore: unused_field
  final $Res Function(WalletBalanceResponseModel) _then;

  @override
  $Res call({
    Object? currentBalance = freezed,
    Object? availableBalance = freezed,
  }) {
    return _then(_value.copyWith(
      currentBalance: currentBalance == freezed
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as Amount,
      availableBalance: availableBalance == freezed
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as Amount,
    ));
  }

  @override
  $AmountCopyWith<$Res> get currentBalance {
    return $AmountCopyWith<$Res>(_value.currentBalance, (value) {
      return _then(_value.copyWith(currentBalance: value));
    });
  }

  @override
  $AmountCopyWith<$Res> get availableBalance {
    return $AmountCopyWith<$Res>(_value.availableBalance, (value) {
      return _then(_value.copyWith(availableBalance: value));
    });
  }
}

/// @nodoc
abstract class _$$_WalletBalanceResponseModelCopyWith<$Res>
    implements $WalletBalanceResponseModelCopyWith<$Res> {
  factory _$$_WalletBalanceResponseModelCopyWith(
          _$_WalletBalanceResponseModel value,
          $Res Function(_$_WalletBalanceResponseModel) then) =
      __$$_WalletBalanceResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: JsonKeys.currentBalance) Amount currentBalance,
      @JsonKey(name: JsonKeys.availableBalance) Amount availableBalance});

  @override
  $AmountCopyWith<$Res> get currentBalance;
  @override
  $AmountCopyWith<$Res> get availableBalance;
}

/// @nodoc
class __$$_WalletBalanceResponseModelCopyWithImpl<$Res>
    extends _$WalletBalanceResponseModelCopyWithImpl<$Res>
    implements _$$_WalletBalanceResponseModelCopyWith<$Res> {
  __$$_WalletBalanceResponseModelCopyWithImpl(
      _$_WalletBalanceResponseModel _value,
      $Res Function(_$_WalletBalanceResponseModel) _then)
      : super(_value, (v) => _then(v as _$_WalletBalanceResponseModel));

  @override
  _$_WalletBalanceResponseModel get _value =>
      super._value as _$_WalletBalanceResponseModel;

  @override
  $Res call({
    Object? currentBalance = freezed,
    Object? availableBalance = freezed,
  }) {
    return _then(_$_WalletBalanceResponseModel(
      currentBalance: currentBalance == freezed
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as Amount,
      availableBalance: availableBalance == freezed
          ? _value.availableBalance
          : availableBalance // ignore: cast_nullable_to_non_nullable
              as Amount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletBalanceResponseModel extends _WalletBalanceResponseModel {
  const _$_WalletBalanceResponseModel(
      {@JsonKey(name: JsonKeys.currentBalance) required this.currentBalance,
      @JsonKey(name: JsonKeys.availableBalance) required this.availableBalance})
      : super._();

  factory _$_WalletBalanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletBalanceResponseModelFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: JsonKeys.currentBalance)
  final Amount currentBalance;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: JsonKeys.availableBalance)
  final Amount availableBalance;

  @override
  String toString() {
    return 'WalletBalanceResponseModel(currentBalance: $currentBalance, availableBalance: $availableBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletBalanceResponseModel &&
            const DeepCollectionEquality()
                .equals(other.currentBalance, currentBalance) &&
            const DeepCollectionEquality()
                .equals(other.availableBalance, availableBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentBalance),
      const DeepCollectionEquality().hash(availableBalance));

  @JsonKey(ignore: true)
  @override
  _$$_WalletBalanceResponseModelCopyWith<_$_WalletBalanceResponseModel>
      get copyWith => __$$_WalletBalanceResponseModelCopyWithImpl<
          _$_WalletBalanceResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletBalanceResponseModelToJson(
      this,
    );
  }
}

abstract class _WalletBalanceResponseModel extends WalletBalanceResponseModel {
  const factory _WalletBalanceResponseModel(
          {@JsonKey(name: JsonKeys.currentBalance)
              required final Amount currentBalance,
          @JsonKey(name: JsonKeys.availableBalance)
              required final Amount availableBalance}) =
      _$_WalletBalanceResponseModel;
  const _WalletBalanceResponseModel._() : super._();

  factory _WalletBalanceResponseModel.fromJson(Map<String, dynamic> json) =
      _$_WalletBalanceResponseModel.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: JsonKeys.currentBalance)
  Amount get currentBalance;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: JsonKeys.availableBalance)
  Amount get availableBalance;
  @override
  @JsonKey(ignore: true)
  _$$_WalletBalanceResponseModelCopyWith<_$_WalletBalanceResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
