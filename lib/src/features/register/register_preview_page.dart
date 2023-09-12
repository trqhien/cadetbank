import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/core/widgets/inherited_widgets/register_data_provider/register_data_provider.dart';
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
          child: InfoTable(
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
