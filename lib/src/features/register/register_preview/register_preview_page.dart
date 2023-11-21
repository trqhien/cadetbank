import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
import 'package:cadetbank/src/core/widgets/info_table.dart';
import 'package:cadetbank/src/app/shared_data/register_data.dart';
import 'package:cadetbank/src/features/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPreviewPage extends StatelessWidget {
  const RegisterPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CadetBankAppBar.modalStyle(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Selector<RegisterState, RegisterData?>(
            selector: (context, appState) => appState.registerData,
            builder: (context, registerData, _) {
              return InfoTable(
                tableData: <String, String>{
                  "Email": registerData?.email ?? "N/A",
                  "Account Type": registerData?.accountType ?? "N/A",
                  "Phone number": registerData?.phoneNumber != null
                    ? "+84${registerData?.phoneNumber}"
                    : "N/A",
                }
              );
            }
          ),
        ),
      ),
    );
  }
}
