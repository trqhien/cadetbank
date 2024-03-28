import 'package:injectable/injectable.dart';
import 'package:restricted_login_flow/src/data/data_sources/balances/savings_accounts_remote_datasource.dart';
import 'package:restricted_login_flow/src/data/data_sources/balances/wallet_remote_datasource.dart';
import 'package:restricted_login_flow/src/data/data_sources/fci_code/fci_code_datasource.dart';
import 'package:restricted_login_flow/src/data/data_sources/fci_code/fci_code_method_channel_datasource.dart';
import 'package:restricted_login_flow/src/data/repository_implementations/balances_repository_impl.dart';
import 'package:restricted_login_flow/src/data/repository_implementations/fci_code_repository_impl.dart';
import 'package:restricted_login_flow/src/domain/repositories/balances_repository.dart';
import 'package:restricted_login_flow/src/domain/repositories/fcicode_repository.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/get_it/get_it_injector_impl.dart';

@module
abstract class DataLayerInjectionModule {
  @LazySingleton(env: prodEnvironments, as: BalancesRepository)
  BalancesRepositoryImpl get balancesRepositoryImpl => BalancesRepositoryImpl(
        serviceLocator.get(),
        serviceLocator.get(),
      );

  @LazySingleton(env: prodEnvironments)
  SavingsAccountsRemoteDataSource get savingsAccountsRemoteDataSource =>
      SavingsAccountsRemoteDataSource(
        serviceLocator.get(),
      );

  @LazySingleton(env: prodEnvironments)
  WalletRemoteDataSource get walletRemoteDataSource => WalletRemoteDataSource(
        serviceLocator.get(),
      );

  @LazySingleton(env: prodEnvironments, as: FCICodeRepository)
  FCICodeRepositoryImpl get fCICodeRepositoryImpl => FCICodeRepositoryImpl(
        serviceLocator.get(),
      );

  @LazySingleton(env: prodEnvironments, as: FCICodeDataSource)
  FCICodeMethodChannelDataSource get fCICodeDataSource =>
      FCICodeMethodChannelDataSource(
        serviceLocator.get(),
      );
}
