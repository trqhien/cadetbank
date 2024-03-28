import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restricted_login_flow/src/domain/entities/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restricted_login_flow/src/domain/usecases/get_balances/get_balances.dart';

part 'account_balances_state.dart';
part 'account_balances_cubit.freezed.dart';

abstract class IAccountBalancesCubit extends Cubit<AccountBalancesState> {
  IAccountBalancesCubit(super.initialState);
  Future<void> init();
}

class AccountBalancesCubit extends Cubit<AccountBalancesState>
    implements IAccountBalancesCubit {
  final GetBalances getBalances;

  AccountBalancesCubit(this.getBalances)
      : super(const AccountBalancesState.loading());

  @override
  Future<void> init() async {
    final accounts = await getBalances.getAccounts();
    emit(AccountBalancesState.ready(accounts));
  }
}
