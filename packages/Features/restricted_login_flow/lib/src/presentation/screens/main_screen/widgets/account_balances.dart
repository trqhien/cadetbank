import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restricted_login_flow/src/domain/entities/account.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/get_it/get_it_injector_impl.dart';
import 'package:restricted_login_flow/src/presentation/common/widgets/maya_loader.dart';
import 'package:restricted_login_flow/src/presentation/common/widgets/rounded_card.dart';
import 'package:restricted_login_flow/src/presentation/cubits/account_balances_cubit/account_balances_cubit.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';

class AccountBalances extends StatelessWidget {
  const AccountBalances({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IAccountBalancesCubit, AccountBalancesState>(
      bloc: injector.get<IAccountBalancesCubit>()..init(),
      builder: (context, state) => state.maybeWhen(
        loading: () => const MayaLoader(),
        ready: (accounts) => AccountBalancesContent(accounts: accounts),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class AccountBalancesContent extends StatelessWidget {
  final List<Account> accounts;

  const AccountBalancesContent({
    super.key,
    required this.accounts,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.currentBalancesTitle,
            style: Theme.of(context).jeko.fontSize18!.bold.textHeight(1.8),
          ),
          const SizedBox(height: Dimens.spacing16),
          if (accounts.isNotEmpty)
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => AccountBalanceTile(
                    iconPath: accounts[index].iconPath,
                    accountName: accounts[index].name,
                    balance: accounts[index].balance,
                  ),
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: accounts.length,
                ),
                const SizedBox(height: Dimens.spacing16),
              ],
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (accounts.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(
                    top: Dimens.spacing4,
                    right: Dimens.spacing8,
                  ),
                  child: SvgPicture.asset(
                    Assets.iconInfo,
                    package: Strings.packageName,
                    width: Dimens.spacing16,
                  ),
                ),
              Expanded(
                child: Text(
                  accounts.isNotEmpty
                      ? Strings.currentBalancesInformationWithAccounts
                      : Strings.currentBalancesInformationWithoutAccounts,
                  style: Theme.of(context)
                      .cerebriSansPro
                      .fontSize12!
                      .grey6Color
                      .textHeight(1.8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AccountBalanceTile extends StatelessWidget {
  final String accountName;
  final double balance;
  final String iconPath;

  const AccountBalanceTile({
    super.key,
    required this.accountName,
    required this.balance,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  iconPath,
                  package: Strings.packageName,
                  width: Dimens.spacing16,
                ),
                const SizedBox(width: Dimens.spacing8),
                Text(
                  accountName,
                  style: Theme.of(context)
                      .cerebriSansPro
                      .fontSize14!
                      .medium
                      .textHeight(1.6),
                ),
              ],
            ),
            Text(
              Strings.formattedBalanceWithPesoSign(balance),
              style: Theme.of(context)
                  .cerebriSansPro
                  .fontSize14!
                  .medium
                  .grey6Color
                  .textHeight(1.6),
            )
          ],
        ),
      ],
    );
  }
}
