import 'package:restricted_login_flow/src/data/data_sources/balances/savings_accounts_remote_datasource.dart';
import 'package:restricted_login_flow/src/data/data_sources/balances/wallet_remote_datasource.dart';
import 'package:restricted_login_flow/src/data/models/savings_accounts_response_model/savings_accounts_response_model.dart';
import 'package:restricted_login_flow/src/data/models/wallet_balance_response_model/wallet_balance_response_model.dart';
import 'package:restricted_login_flow/src/domain/common/common.dart';
import 'package:restricted_login_flow/src/domain/entities/balances.dart';
import 'package:restricted_login_flow/src/domain/entities/account.dart';
import 'package:dartz/dartz.dart';
import 'package:restricted_login_flow/src/domain/repositories/balances_repository.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

class BalancesRepositoryImpl implements BalancesRepository {
  final SavingsAccountsRemoteDataSource savingsAccountsRemoteDataSource;
  final WalletRemoteDataSource walletRemoteDataSource;
  BalancesRepositoryImpl(
    this.savingsAccountsRemoteDataSource,
    this.walletRemoteDataSource,
  );

  @override
  Future<Either<Failure, Balances>> getBalances() async {
    try {
      final SavingsAccountsResponseModel? savingsAccounts =
          await savingsAccountsRemoteDataSource.getSavingsAccounts();
      final WalletBalanceResponseModel? walletBalance =
          await walletRemoteDataSource.getBalance();
      return Right(
        Balances(
          walletBalance:
              double.parse(walletBalance?.currentBalance.value ?? "0"),
          savingsBalance: savingsAccounts?.totalBalance() ?? 0,
        ),
      );
    } on ApiRequestException catch (e) {
      return Left(ApiRequestFailure(e.data, e.statusCode));
    } on ApiResponseException catch (e) {
      return Left(ApiResponseFailure(errMessage: e.exceptionMessage));
    }
  }

  @override
  Future<Either<Failure, Account>> getWalletBalance() async {
    try {
      final WalletBalanceResponseModel? walletBalance =
          await walletRemoteDataSource.getBalance();
      return Right(
        Account(
          iconPath: Assets.iconWallet,
          name: Strings.commonWallet,
          balance: double.parse(walletBalance?.currentBalance.value ?? "0"),
        ),
      );
    } on ApiRequestException catch (e) {
      return Left(ApiRequestFailure(e.data, e.statusCode));
    } on ApiResponseException catch (e) {
      return Left(ApiResponseFailure(errMessage: e.exceptionMessage));
    } on Error catch (e) {
      return Left(
        GenericFailure(e.toString()),
      );
    } catch (e) {
      return Left(
        GenericFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, Account>> getSavingsBalance() async {
    try {
      final SavingsAccountsResponseModel? savingsAccounts =
          await savingsAccountsRemoteDataSource.getSavingsAccounts();
      return Right(
        Account(
          iconPath: Assets.iconSavings,
          name: Strings.commonSavings,
          balance: savingsAccounts?.totalBalance() ?? 0,
        ),
      );
    } on ApiRequestException catch (e) {
      return Left(ApiRequestFailure(e.data, e.statusCode));
    } on Exception catch (e) {
      return Left(
        GenericFailure(e.toString()),
      );
    } on Error catch (e) {
      return Left(
        GenericFailure(e.toString()),
      );
    } catch (e) {
      return Left(
        GenericFailure(e.toString()),
      );
    }
  }
}
