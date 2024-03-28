import 'package:freezed_annotation/freezed_annotation.dart';

part 'dev_login_identity_model.freezed.dart';
part 'dev_login_identity_model.g.dart';

@freezed
class DevLoginIdentityModel with _$DevLoginIdentityModel {
  const factory DevLoginIdentityModel({
    required String value,
    required String type,
  }) = _DevLoginIdentityModel;

  factory DevLoginIdentityModel.fromJson(Map<String, dynamic> json) =>
      _$DevLoginIdentityModelFromJson(json);
}
