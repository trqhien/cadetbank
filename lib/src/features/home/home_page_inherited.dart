import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/cadet_tab_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_inherited.dart';
import 'package:cadetbank/src/features/home/widgets/user_avatar_app_bar_leading.dart';
import 'package:cadetbank/src/features/home/widgets/username_app_bar_leading.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> products;

  const HomePage({super.key}) 
    : products = const ["Saving", "Wallet", "Loans", "Invest", "Credit", "Inherited"];

  @override
  Widget build(BuildContext context) {
    final userDetails = LoggedInUserDataInherited.of(context)!.userDetails;

    return Scaffold(
      appBar: CadetBankAppBar.custom(
        leading: ValueListenableBuilder(
          valueListenable: userDetails,
          builder: (context, user, _) => user?.username != null
            ? UsernameAppBarLeading(username: user!.username!)
            : const UserAvatarAppBarLeading()
        ),
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
              builder: (ctx, constraints) {
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
