import 'package:restricted_login_flow/src/domain/common/common.dart';
import 'package:restricted_login_flow/src/domain/entities/balances.dart';
import 'package:restricted_login_flow/src/domain/entities/account.dart';
import 'package:dartz/dartz.dart';

abstract class BalancesRepository {
  Future<Either<Failure, Balances>> getBalances();
  Future<Either<Failure, Account>> getWalletBalance();
  Future<Either<Failure, Account>> getSavingsBalance();
}
