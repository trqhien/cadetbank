import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/features/app/cadet_bank_app.dart';
import 'package:flutter/material.dart';

class RegisterPreviewPage extends StatelessWidget {
  const RegisterPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerData = RegisterDataProvider.of(context)!.registerData;

    return Scaffold(
      appBar: CadetBankAppBar.modalStyle(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: _InfoTable(
            tableData: <String, String>{
              "Email": registerData.email.value ?? "N/A",
              "Account Type": registerData.accountType.value ?? "N/A",
              "Phone number": registerData.phoneNumber.value != null
                ? "+84${registerData.phoneNumber.value!}"
                : "N/A",
            }
          ),
        ),
      ),
    );
  }
}

class _InfoTable extends StatelessWidget {
  final Map<String, String> tableData;

  const _InfoTable({
    super.key, 
    required this.tableData
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.grey3Color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: tableData.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => _InfoCell(
          title: tableData.keys.elementAt(index),
          info: tableData.values.elementAt(index),
        ),
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          );
        },
      ),
    );
  }
}

class _InfoCell extends StatelessWidget {
  final String title;
  final String info;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets? padding;

  const _InfoCell({
    super.key, 
    required this.title,
    required this.info,
    this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Expanded(
            child: Text(
              title,
              // style: Theme.of(context)
              //     .jeko
              //     .fontSize12!
              //     .semiBold
              //     .grey5Color
              //     .textHeight(1.6),
            )
          ),
          Expanded(
            child: Text(
              info,
              // style: Theme.of(context).jeko.fontSize14!.semiBold,
            )
          ),
        ],
      ),
    );
  }
}
