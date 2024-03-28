// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dev_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DevLoginModel _$$_DevLoginModelFromJson(Map<String, dynamic> json) =>
    _$_DevLoginModel(
      password: json['password'] as String,
      identity: json['identity'],
      deviceToken: json['deviceToken'] as String,
      source: json['source'] as String,
    );

Map<String, dynamic> _$$_DevLoginModelToJson(_$_DevLoginModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'identity': instance.identity,
      'deviceToken': instance.deviceToken,
      'source': instance.source,
    };
