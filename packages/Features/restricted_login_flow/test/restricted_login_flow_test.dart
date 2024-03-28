import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restricted_login_flow/src/domain/entities/account.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/get_it/get_it_injector_impl.dart';
import 'package:restricted_login_flow/src/presentation/cubits/account_balances_cubit/account_balances_cubit.dart';
import 'package:restricted_login_flow/src/presentation/screens/main_screen/main_screen.dart';

void main() {
  setUp(
    () => {
      serviceLocator.registerLazySingleton<IAccountBalancesCubit>(
        () => FakeAccountBalancesCubit(
          const AccountBalancesState.loading(),
        ),
      )
    },
  );

  testWidgets('Sample', (tester) async {
    final Widget _widget = BlocProvider(
      create: (BuildContext context) {
        return FakeAccountBalancesCubit(const AccountBalancesState.loading());
      },
      child: const MainScreenContent(errorCode: 'FCI-100'),
    );
    final Widget testWidget = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(home: _widget),
    );
    await tester.pumpWidget(testWidget);
    expect(
      find.byWidgetPredicate((widget) => widget is Scaffold),
      findsOneWidget,
    );
  });
}

class FakeAccountBalancesCubit extends IAccountBalancesCubit {
  FakeAccountBalancesCubit(super.initialState);

  @override
  Future<void> init() async {
    emits(
      const AccountBalancesState.ready(
        [Account(iconPath: 'iconPath', name: 'name', balance: 0)],
      ),
    );
  }
}
