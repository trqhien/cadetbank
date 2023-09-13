import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data_inherited.dart';
import 'package:flutter/material.dart';

class SelectAccountTypePage extends StatefulWidget {
  const SelectAccountTypePage({super.key});

  @override
  State<SelectAccountTypePage> createState() => _SelectAccountTypePageState();
}

class _SelectAccountTypePageState extends State<SelectAccountTypePage> {
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

  String? currentValue;

  void _selectType(String? _type) {
    setState(() {
      currentValue = _type;
    });
  }

  @override
  Widget build(BuildContext context) {
    final registerDataProvider = RegisterDataInherited.of(context)!;
    final registerData = registerDataProvider.registerData;
    currentValue ??= registerData.accountType.value;

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
                    groupValue: currentValue, 
                    onChanged: _selectType
                  ),
                  onTap: () {
                    _selectType(e.id);
                  },
                ),
              )),
              const Spacer(),
              TextButton(
                onPressed: currentValue != null || registerDataProvider.debug
                  ? () {
                      if (!registerDataProvider.debug) {
                        registerData.updateAccountType(currentValue!);
                      }

                      Navigator.of(context).pushNamed("/register/phone");
                    }
                  : null,
                child: const Text("Next"),
              ),
            ],
          )
        ),
      ),
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
