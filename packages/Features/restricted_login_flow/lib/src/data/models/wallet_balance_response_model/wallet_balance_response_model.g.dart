// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_balance_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletBalanceResponseModel _$$_WalletBalanceResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_WalletBalanceResponseModel(
      currentBalance:
          Amount.fromJson(json['current_balance'] as Map<String, dynamic>),
      availableBalance:
          Amount.fromJson(json['available_balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WalletBalanceResponseModelToJson(
        _$_WalletBalanceResponseModel instance) =>
    <String, dynamic>{
      'current_balance': instance.currentBalance.toJson(),
      'available_balance': instance.availableBalance.toJson(),
    };
