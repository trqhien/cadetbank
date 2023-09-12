import 'package:cadetbank/src/core/network/dio_helper.dart';
import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/cadet_tab_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/logged_in_user_provider/logged_in_user_provider.dart';
import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
import 'package:cadetbank/src/network/api_response.dart';
import 'package:cadetbank/src/network/users/response/get_user_details_response.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final products = ["Saving", "Wallet", "Loans", "Invest", "Credit"];

  // final dio = DioHelper.shared.dio!;
  // bool isLoading = false;
  // String? _apiError;

  @override
  void initState() {
    super.initState();
    // fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    final userDetails = LoggedInUserDataProvider.of(context)!.userDetails;

    return Scaffold(
      appBar: CadetBankAppBar.custom(
        leading: ValueListenableBuilder(
          valueListenable: userDetails,
          builder: (context, user, _) {
            return user != null && user.username != null
              ? GestureDetector(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        user.username!, 
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge!
                          .copyWith(fontWeight: FontWeight.w700)
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: CustomColors.primaryGreenColor,
                      size: 28,
                    )
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("/profile");
                },
              )
              : CircleAvatar(
                  backgroundColor: CustomColors.secondaryGreenColor,
                  child: IconButton(
                    icon: Image.asset(
                      "assets/icons/User-2.png",
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                      color: CustomColors.primaryGreenColor,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/profile");
                    }
                  ),
                );
          }
        ),
      ),
      body: SafeArea(
        child: CadetTabBar(
          itemCount: products.length,
          tabBarTextBuilder: (ctx, idx) => products[idx],
          tabBarViewBuilder: (ctx, idx) => RefreshIndicator(
            color: CustomColors.pink,
            onRefresh: () async {
              // await _bloc.resetList(index: index);
            },
            child: LayoutBuilder(
              builder: (ctx, constraints) {
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  itemBuilder: (ctx, _idx) => const Text("Under construction"),
                  separatorBuilder: (ctx, _) => const SizedBox(height: 16),
                  itemCount: 1
                );
              }
            ),
          )
        ),
      ),
    );
  }
}
