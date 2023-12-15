import 'package:coreui/coreui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_feature/src/presentation/bloc/home_bloc.dart';
import 'package:home_feature/src/presentation/widgets/user_avatar_app_bar_leading.dart';
import 'package:home_feature/src/presentation/widgets/username_app_bar_leading.dart';
import 'package:shared_states/shared_states.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CadetBankAppBar.custom(
        // leading: Selector<AppState, String?>(
        //   selector: (context, appState) => appState.user?.username,
        //   builder: (context, username, _) => username != null
        //     ? UsernameAppBarLeading(username: username)
        //     : const UserAvatarAppBarLeading()
        // ),
        leading: BlocBuilder<AuthenticatedUserBloc, AuthenticatedUserState>(
          builder: (context, state) => state.isUsernameAvailable
            ? UsernameAppBarLeading(username: state.authenticatedUser!.username!)
            : const UserAvatarAppBarLeading()
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => HomeBloc()
            ..add(const LoadedProducts(["Saving", "Wallet", "Loans", "Invest", "Credit"])),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return CadetTabBar(
                key: Key("$this-${state.products.length}"),
                itemCount: state.products.length,
                tabBarTextBuilder: (ctx, idx) => state.products.isNotEmpty
                  ? state.products[idx]
                  : "",
                tabBarViewBuilder: (ctx, idx) => RefreshIndicator(
                  color: CustomColors.pink,
                  onRefresh: () async {
                    // Do something here later
                  },
                  child: LayoutBuilder(builder: (ctx, constraints) {
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
                          ),
                          const Spacer(),
                        ],
                      ),
                    ));
                  }),
                )
              );
            },
          ),
        ),
      ),
    );
  }
}
