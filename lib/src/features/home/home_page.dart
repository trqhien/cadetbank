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
        leading: const UserAvatarAppBarLeading() // snippet:cadetappbarleading
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
                        // Image.asset(
                        //   "assets/images/Maintenance.png",
                        //   width: constraints.maxWidth * 0.6,
                        //   height: constraints.maxWidth * 0.6,
                        //   fit: BoxFit.cover,
                        // ),
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: () {
                            // final appState = context.read<AppState>();
                            // final user = appState.user!;

                            // 1. Update username
                            // final username = user?.username ?? "N/A";
                            // appState.updateCurrentUser(user.copyWith(username: "${username}⭐️"));
                            
                            // 2. Update email
                            // final email = user.email ; 
                            // appState.updateCurrentUser(user.copyWith(email: "${email}⭐️"));
                          }, 
                          child: const Text("Change username")
                        ),
                        const SizedBox(height: 20),
                        // Text("watch: ${context.watch<AppState>().user?.username}"),
                        // Text("select: ${context.select<AppState, String>((value) => value.user!.username ?? "")}"),
                        // Text("read: ${context.read<AppState>().user?.username}"),
                        // Text(
                        //   "This page is under construction. \nCome back later.", 
                        //   textAlign: TextAlign.center, 
                        //   style: Theme.of(context).textTheme.titleSmall!
                        //     // .copyWith(fontWeight: FontWeight.w600)   
                        // ),
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
