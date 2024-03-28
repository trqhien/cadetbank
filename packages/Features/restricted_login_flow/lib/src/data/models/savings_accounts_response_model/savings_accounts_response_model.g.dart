// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_accounts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavingsAccountsResponseModel _$$_SavingsAccountsResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SavingsAccountsResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => SavingsAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SavingsAccountsResponseModelToJson(
        _$_SavingsAccountsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
