// import 'package:cadetbank/src/core/widgets/inherited_widgets/demo_topic_inherited.dart';
// import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
// import 'package:cadetbank/src/core/widgets/info_table.dart';
// import 'package:flutter/material.dart';

// class DebugPage extends StatelessWidget {
//   const DebugPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final demoMode = DemoTopicInherited.of(context)!;

//     return Scaffold(
//       // appBar: CadetBankAppBar.modalStyle(),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: InfoTable(
//             tableData: <String, String>{
//               "State management": "${demoMode.stateManagement}",
//             },
//             infoTextStyle: const TextStyle(fontSize: 10),
//           )
//         ),
//       ),
//     );
//   }
// }
