import 'package:dartz/dartz.dart';
import 'package:restricted_login_flow/src/domain/common/common.dart';
import 'package:restricted_login_flow/src/domain/entities/balances.dart';
import 'package:restricted_login_flow/src/domain/entities/account.dart';
import 'package:restricted_login_flow/src/domain/repositories/balances_repository.dart';

class GetBalances with NoParamUseCases<Either<Failure, Balances>> {
  final BalancesRepository repository;

  GetBalances(this.repository);

  @override
  Future<Either<Failure, Balances>> call() async {
    return repository.getBalances();
  }

  Future<List<Account>> getAccounts() async {
    final List<Account> accounts = [];

    final wallet = await repository.getWalletBalance();
    wallet.fold((l) => null, (r) => accounts.add(r));

    final savings = await repository.getSavingsBalance();
    savings.fold((l) => null, (r) => accounts.add(r));

    return accounts;
  }
}
