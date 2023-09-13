import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:cadetbank/src/features/register/select_account_type/select_account_type_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectAccountTypePage extends StatelessWidget {
  const SelectAccountTypePage({super.key});

  final _options = const [
    _AccTypeData(
      id: "personal",
      title: "Personal", 
      description: "Send, spend, and receive money around the world for less.", 
      icon:  "assets/icons/User.png"
    ),
    _AccTypeData(
      id: "business", 
      title: "Business", 
      description: "Do business or freelance work internationally.", 
      icon: "assets/icons/Retail.png"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectAccountTypeProvider(
        currentAccountType: context.read<AppState>().registerData?.accountType
      ),
      builder: (context, _) {
        return Scaffold(
          appBar: CadetBankAppBar.pushStyle(
            actions: [
              IconButton(
                icon: Image.asset(
                  "assets/icons/Bills-2.png",
                  width: 18,
                  height: 18,
                  fit: BoxFit.cover,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pushNamed("/register/preview");
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "What kind of account would you like to open today?",
                    style: Theme.of(context).textTheme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 24),

                  ..._options.map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8).copyWith(left: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: CustomColors.grey4Color),
                      ),
                      minLeadingWidth: 44,
                      minVerticalPadding: 0,
                      horizontalTitleGap: 0,
                      title: Text(
                        e.title, 
                        style: Theme.of(context).textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w600)
                      ),
                      subtitle: Text(
                        e.description,
                        style: Theme.of(context).textTheme.bodyLarge!
                          .copyWith(fontWeight: FontWeight.w300)
                      ),
                      leading: Image.asset(
                        e.icon,
                        width: 32,
                        height: 32,
                        fit: BoxFit.cover,
                      ),
                      trailing: Radio(
                        value: e.id, 
                        groupValue: context.watch<SelectAccountTypeProvider>().currentAccountType, 
                        onChanged: context.read<SelectAccountTypeProvider>().onTypeSelected
                      ),
                      onTap: () {
                        context.read<SelectAccountTypeProvider>().onTypeSelected(e.id);
                      },
                    ),
                  )),
                  const Spacer(),
                  Selector2<SelectAccountTypeProvider, AppState, bool>(
                    selector: (context, selectAccountTypeProvider, appState) => appState.debug
                      || selectAccountTypeProvider.currentAccountType != null,
                    builder: (context, isFlowValid, _) {
                      return TextButton(
                        onPressed: isFlowValid
                          ? () {
                              final appState = context.read<AppState>();
                              if (!appState.debug) {
                                appState.updateRegisteredAccountType(context.read<SelectAccountTypeProvider>().currentAccountType!);
                              }
                              Navigator.of(context).pushNamed("/register/phone");
                            }
                          : null,
                        child: const Text("Next"),
                      );
                    }
                  ),
                ],
              )
            ),
          ),
        );
      }
    );
  }
}

class _AccTypeData {
  final String title;
  final String description;
  final String icon;
  final String id;

  const _AccTypeData({
    required this.id,
    required this.title, 
    required this.description, 
    required this.icon
  });
}
