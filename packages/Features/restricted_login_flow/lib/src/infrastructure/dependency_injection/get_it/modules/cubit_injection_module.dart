import 'package:injectable/injectable.dart';
import 'package:restricted_login_flow/src/domain/usecases/get_balances/get_balances.dart';
import 'package:restricted_login_flow/src/domain/usecases/get_fci_code/get_fci_code.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/get_it/get_it_injector_impl.dart';
import 'package:restricted_login_flow/src/presentation/cubits/account_balances_cubit/account_balances_cubit.dart';
import 'package:restricted_login_flow/src/presentation/cubits/main_screen_cubit/main_screen_cubit.dart';

@module
abstract class CubitInjectionModule {
  @LazySingleton(env: prodEnvironments, as: IAccountBalancesCubit)
  AccountBalancesCubit get accountBalancesCubit => AccountBalancesCubit(
        GetBalances(
          serviceLocator.get(),
        ),
      );

  @LazySingleton(env: prodEnvironments, as: IMainScreenCubit)
  MainScreenCubit get mainScreenCubit => MainScreenCubit(
        GetFCICode(
          serviceLocator.get(),
        ),
      );
}
