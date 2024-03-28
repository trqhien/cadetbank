// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'savings_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavingsAccount _$SavingsAccountFromJson(Map<String, dynamic> json) {
  return _SavingsAccount.fromJson(json);
}

/// @nodoc
mixin _$SavingsAccount {
  String get id => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  DormancyDetails? get dormancyDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavingsAccountCopyWith<SavingsAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingsAccountCopyWith<$Res> {
  factory $SavingsAccountCopyWith(
          SavingsAccount value, $Res Function(SavingsAccount) then) =
      _$SavingsAccountCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String number,
      double balance,
      DormancyDetails? dormancyDetails});

  $DormancyDetailsCopyWith<$Res>? get dormancyDetails;
}

/// @nodoc
class _$SavingsAccountCopyWithImpl<$Res>
    implements $SavingsAccountCopyWith<$Res> {
  _$SavingsAccountCopyWithImpl(this._value, this._then);

  final SavingsAccount _value;
  // ignore: unused_field
  final $Res Function(SavingsAccount) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? balance = freezed,
    Object? dormancyDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      dormancyDetails: dormancyDetails == freezed
          ? _value.dormancyDetails
          : dormancyDetails // ignore: cast_nullable_to_non_nullable
              as DormancyDetails?,
    ));
  }

  @override
  $DormancyDetailsCopyWith<$Res>? get dormancyDetails {
    if (_value.dormancyDetails == null) {
      return null;
    }

    return $DormancyDetailsCopyWith<$Res>(_value.dormancyDetails!, (value) {
      return _then(_value.copyWith(dormancyDetails: value));
    });
  }
}

/// @nodoc
abstract class _$$_SavingsAccountCopyWith<$Res>
    implements $SavingsAccountCopyWith<$Res> {
  factory _$$_SavingsAccountCopyWith(
          _$_SavingsAccount value, $Res Function(_$_SavingsAccount) then) =
      __$$_SavingsAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String number,
      double balance,
      DormancyDetails? dormancyDetails});

  @override
  $DormancyDetailsCopyWith<$Res>? get dormancyDetails;
}

/// @nodoc
class __$$_SavingsAccountCopyWithImpl<$Res>
    extends _$SavingsAccountCopyWithImpl<$Res>
    implements _$$_SavingsAccountCopyWith<$Res> {
  __$$_SavingsAccountCopyWithImpl(
      _$_SavingsAccount _value, $Res Function(_$_SavingsAccount) _then)
      : super(_value, (v) => _then(v as _$_SavingsAccount));

  @override
  _$_SavingsAccount get _value => super._value as _$_SavingsAccount;

  @override
  $Res call({
    Object? id = freezed,
    Object? number = freezed,
    Object? balance = freezed,
    Object? dormancyDetails = freezed,
  }) {
    return _then(_$_SavingsAccount(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      dormancyDetails: dormancyDetails == freezed
          ? _value.dormancyDetails
          : dormancyDetails // ignore: cast_nullable_to_non_nullable
              as DormancyDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavingsAccount extends _SavingsAccount {
  const _$_SavingsAccount(
      {required this.id,
      required this.number,
      required this.balance,
      this.dormancyDetails})
      : super._();

  factory _$_SavingsAccount.fromJson(Map<String, dynamic> json) =>
      _$$_SavingsAccountFromJson(json);

  @override
  final String id;
  @override
  final String number;
  @override
  final double balance;
  @override
  final DormancyDetails? dormancyDetails;

  @override
  String toString() {
    return 'SavingsAccount(id: $id, number: $number, balance: $balance, dormancyDetails: $dormancyDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavingsAccount &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.dormancyDetails, dormancyDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(dormancyDetails));

  @JsonKey(ignore: true)
  @override
  _$$_SavingsAccountCopyWith<_$_SavingsAccount> get copyWith =>
      __$$_SavingsAccountCopyWithImpl<_$_SavingsAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavingsAccountToJson(
      this,
    );
  }
}

abstract class _SavingsAccount extends SavingsAccount {
  const factory _SavingsAccount(
      {required final String id,
      required final String number,
      required final double balance,
      final DormancyDetails? dormancyDetails}) = _$_SavingsAccount;
  const _SavingsAccount._() : super._();

  factory _SavingsAccount.fromJson(Map<String, dynamic> json) =
      _$_SavingsAccount.fromJson;

  @override
  String get id;
  @override
  String get number;
  @override
  double get balance;
  @override
  DormancyDetails? get dormancyDetails;
  @override
  @JsonKey(ignore: true)
  _$$_SavingsAccountCopyWith<_$_SavingsAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
