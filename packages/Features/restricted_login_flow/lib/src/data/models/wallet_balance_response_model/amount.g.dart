// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Amount _$$_AmountFromJson(Map<String, dynamic> json) => _$_Amount(
      currency: json['currency'] as String,
      value: json['value'] as String? ?? "0",
    );

Map<String, dynamic> _$$_AmountToJson(_$_Amount instance) => <String, dynamic>{
      'currency': instance.currency,
      'value': instance.value,
    };
