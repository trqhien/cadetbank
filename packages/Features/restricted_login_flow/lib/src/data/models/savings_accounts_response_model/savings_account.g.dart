// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingsAccount _$$_SavingsAccountFromJson(Map<String, dynamic> json) =>
    _$_SavingsAccount(
      id: json['id'] as String,
      number: json['number'] as String,
      balance: (json['balance'] as num).toDouble(),
      dormancyDetails: json['dormancyDetails'] == null
          ? null
          : DormancyDetails.fromJson(
              json['dormancyDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SavingsAccountToJson(_$_SavingsAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'balance': instance.balance,
      'dormancyDetails': instance.dormancyDetails?.toJson(),
    };
