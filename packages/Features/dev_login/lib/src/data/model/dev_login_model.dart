import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paymaya_dev_login/src/data/model/dev_login_identity_model.dart';

part 'dev_login_model.freezed.dart';
part 'dev_login_model.g.dart';

@freezed
class DevLoginModel with _$DevLoginModel {
  const factory DevLoginModel({
    required String password,
    required DevLoginIdentityModel identity,
    @JsonValue('device_token') required String deviceToken,
    required String source,
  }) = _DevLoginModel;

  factory DevLoginModel.fromJson(Map<String, dynamic> json) =>
      _$DevLoginModelFromJson(json);
}
