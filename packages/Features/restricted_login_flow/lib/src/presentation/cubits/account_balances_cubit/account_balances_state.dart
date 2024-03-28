part of 'account_balances_cubit.dart';

@freezed
class AccountBalancesState with _$AccountBalancesState {
  const factory AccountBalancesState.loading() = _Loading;

  const factory AccountBalancesState.ready(
    List<Account> accounts,
  ) = _Ready;
}
