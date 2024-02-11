// ignore_for_file: avoid_print

import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/cadet_tab_bar.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:cadetbank/src/features/home/widgets/user_avatar_app_bar_leading.dart';
import 'package:cadetbank/src/features/home/widgets/username_app_bar_leading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final List<String> products;

  const HomePage({super.key}) 
    : products = const ["Saving", "Wallet", "Loans", "Invest", "Credit"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CadetBankAppBar.custom(
        // TODO: 4. Update appbar using read
        // snippet: providerappbarleadingread
        // leading: context.read<AppState>().user?.username != null
        //   ? UsernameAppBarLeading(username: context.read<AppState>().user!.username!)
        //   : const UserAvatarAppBarLeading(),

        // TODO: X. Update appbar using `Selector<AppState, bool>`
        // snippet:providerappbarleadingselector
        leading: Selector<AppState, String?>(
          selector: (context, appState) => appState.user?.username,
          builder: (context, username, _) => username != null
            ? UsernameAppBarLeading(username: username)
            : const UserAvatarAppBarLeading(),
        )
        // snippet: providerappbarleadingselector
        // leading: const UserAvatarAppBarLeading()
      ),
      body: SafeArea(
        child: CadetTabBar(
          itemCount: products.length,
          tabBarTextBuilder: (ctx, idx) => products[idx],
          tabBarViewBuilder: (ctx, idx) => RefreshIndicator(
            color: CustomColors.pink,
            onRefresh: () async {
              // Do something here later
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                print("🌮 Layout is rebuilt");

                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const Spacer(),
                        Image.asset(
                          "assets/images/Maintenance.png",
                          width: constraints.maxWidth * 0.6,
                          height: constraints.maxWidth * 0.6,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "This page is under construction. \nCome back later.", 
                          textAlign: TextAlign.center, 
                          style: Theme.of(context).textTheme.titleSmall!
                            // .copyWith(fontWeight: FontWeight.w600)   
                        ),
                        const Spacer(),
                      ],
                    ),
                  )
                );
              }
            ),
          )
        ),
      ),
    );
  }
}
