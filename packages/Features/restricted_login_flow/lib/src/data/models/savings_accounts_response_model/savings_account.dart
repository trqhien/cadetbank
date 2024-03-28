import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restricted_login_flow/src/data/models/savings_accounts_response_model/dormancy_details.dart';

part 'savings_account.freezed.dart';
part 'savings_account.g.dart';

@freezed
class SavingsAccount with _$SavingsAccount {
  const SavingsAccount._();
  const factory SavingsAccount({
    required String id,
    required String number,
    required double balance,
    DormancyDetails? dormancyDetails,
  }) = _SavingsAccount;

  factory SavingsAccount.fromJson(Map<String, dynamic> json) =>
      _$SavingsAccountFromJson(json);
}
