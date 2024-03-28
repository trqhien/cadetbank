// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/data_sources/balances/savings_accounts_remote_datasource.dart'
    as _i12;
import '../../../data/data_sources/balances/wallet_remote_datasource.dart'
    as _i13;
import '../../../data/data_sources/fci_code/fci_code_datasource.dart' as _i5;
import '../../../domain/repositories/balances_repository.dart' as _i3;
import '../../../domain/repositories/fcicode_repository.dart' as _i6;
import '../../../presentation/cubits/account_balances_cubit/account_balances_cubit.dart'
    as _i7;
import '../../../presentation/cubits/main_screen_cubit/main_screen_cubit.dart'
    as _i9;
import '../../crash_monitoring/crash_monitoring_helper.dart' as _i8;
import '../../maya_method_channel/maya_method_channel.dart' as _i10;
import '../../router/router.dart' as _i11;
import 'modules/cubit_injection_module.dart' as _i16;
import 'modules/data_layer_injection_module.dart' as _i14;
import 'modules/injection_module.dart' as _i15;

const String _integration = 'integration';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dataLayerInjectionModule = _$DataLayerInjectionModule();
  final externalPackageDependencies = _$ExternalPackageDependencies();
  final cubitInjectionModule = _$CubitInjectionModule();
  gh.lazySingleton<_i3.BalancesRepository>(
    () => dataLayerInjectionModule.balancesRepositoryImpl,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i4.Dio>(
    () => externalPackageDependencies.dio,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i5.FCICodeDataSource>(
    () => dataLayerInjectionModule.fCICodeDataSource,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i6.FCICodeRepository>(
    () => dataLayerInjectionModule.fCICodeRepositoryImpl,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i7.IAccountBalancesCubit>(
    () => cubitInjectionModule.accountBalancesCubit,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i8.ICrashMonitoringHelper>(
    () => externalPackageDependencies.crashMonitoringHelper,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i9.IMainScreenCubit>(
    () => cubitInjectionModule.mainScreenCubit,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i10.IMayaMethodChannel>(
    () => externalPackageDependencies.mayaMethodChannel,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i11.IRouter>(
    () => externalPackageDependencies.router,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i12.SavingsAccountsRemoteDataSource>(
    () => dataLayerInjectionModule.savingsAccountsRemoteDataSource,
    registerFor: {
      _integration,
      _prod,
    },
  );
  gh.lazySingleton<_i13.WalletRemoteDataSource>(
    () => dataLayerInjectionModule.walletRemoteDataSource,
    registerFor: {
      _integration,
      _prod,
    },
  );
  return get;
}

class _$DataLayerInjectionModule extends _i14.DataLayerInjectionModule {}

class _$ExternalPackageDependencies extends _i15.ExternalPackageDependencies {}

class _$CubitInjectionModule extends _i16.CubitInjectionModule {}
