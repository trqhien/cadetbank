import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restricted_login_flow/src/data/models/savings_accounts_response_model/savings_account.dart';

part 'savings_accounts_response_model.freezed.dart';
part 'savings_accounts_response_model.g.dart';

@freezed
class SavingsAccountsResponseModel with _$SavingsAccountsResponseModel {
  const SavingsAccountsResponseModel._();
  const factory SavingsAccountsResponseModel({
    required List<SavingsAccount> data,
  }) = _SavingsAccountsResponseModel;

  factory SavingsAccountsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SavingsAccountsResponseModelFromJson(json);
}

extension SavingsAccountsResponseModelExtension
    on SavingsAccountsResponseModel {
  double totalBalance() {
    double total = 0;
    for (final account in data) {
      final double lastBalance = account.dormancyDetails?.lastBalance ?? 0;
      total += lastBalance > 0 ? lastBalance : account.balance;
    }
    return total;
  }
}
