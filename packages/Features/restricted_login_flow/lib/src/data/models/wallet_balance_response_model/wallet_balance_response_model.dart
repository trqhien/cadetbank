import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';

import 'amount.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_balance_response_model.freezed.dart';
part 'wallet_balance_response_model.g.dart';

@freezed
class WalletBalanceResponseModel with _$WalletBalanceResponseModel {
  const WalletBalanceResponseModel._();

  const factory WalletBalanceResponseModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: JsonKeys.currentBalance) required Amount currentBalance,
    // ignore: invalid_annotation_target
    @JsonKey(name: JsonKeys.availableBalance) required Amount availableBalance,
  }) = _WalletBalanceResponseModel;

  factory WalletBalanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WalletBalanceResponseModelFromJson(json);
}
