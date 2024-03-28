// import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
// import 'package:cadetbank/src/features/app/app_state.dart';
// import 'package:cadetbank/src/features/register/register_phone/register_phone_provider.dart';
// import 'package:cadetbank/src/features/register/widgets/login_flow_prompt_text.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class RegisterPhonePage extends StatelessWidget {
//   const RegisterPhonePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => RegisterPhoneProvider(
//         currentPhone: context.read<AppState>().registerData?.phoneNumber
//       )..validatePhone(),
//       builder: (context, _) {
//         return Scaffold(
//           // appBar: CadetBankAppBar.pushStyle(
//           //   actions: [
//           //     IconButton(
//           //       icon: Image.asset(
//           //         "assets/icons/Bills-2.png",
//           //         width: 18,
//           //         height: 18,
//           //         fit: BoxFit.cover,
//           //       ),
//           //       splashColor: Colors.transparent,
//           //       highlightColor: Colors.transparent,
//           //       onPressed: () {
//           //         Navigator.of(context).pushNamed("/register/preview");
//           //       },
//           //     ),
//           //   ],
//           // ),
//           body: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(32),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text(
//                     "Verify your phone number with a code",
//                     style: Theme.of(context).textTheme.headlineSmall!
//                       .copyWith(fontWeight: FontWeight.w600),
//                   ),
//                   const SizedBox(height: 24),
//                   const Text("We'll send you a code - it helps us keep your account secure."),
//                   const SizedBox(height: 12),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       IntrinsicWidth(
//                         child: TextFormField(
//                           initialValue: "🇵🇭 +84",
//                           style: Theme.of(context).textTheme.titleSmall!
//                             .copyWith(fontWeight: FontWeight.w600),
//                           readOnly: true,
//                           decoration: const InputDecoration(
//                             contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//                             border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                             focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                             enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                           )
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       Expanded(
//                         child: TextFormField(
//                           initialValue: context.read<AppState>().registerData?.phoneNumber,
//                           keyboardType: TextInputType.number,
//                           autocorrect: false,
//                           style: Theme.of(context).textTheme.titleSmall!
//                             .copyWith(fontWeight: FontWeight.w600),
//                           onChanged: context.read<RegisterPhoneProvider>().onPhoneChanged,
//                           decoration: InputDecoration(
//                             contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
//                             errorStyle: const TextStyle(fontSize: 10),
//                             errorText: context.read<RegisterPhoneProvider>().phoneErrorText,
//                             border: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                             focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                             enabledBorder: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
//                           ),

//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 32),
//                   const LogInFlowPromptText(),
//                   const Spacer(),
//                   Selector2<RegisterPhoneProvider, AppState, bool>(
//                     selector: (context, registerPhoneProvider, appState) => registerPhoneProvider.isRegisterValid 
//                       || appState.debug,
//                     builder: (context, isRegisterValid, _) {
//                       return TextButton(
//                         onPressed: isRegisterValid
//                           ? () {
//                               final appState = context.read<AppState>();
//                               if (!appState.debug) {
//                                 appState.updateRegisteredPhone(context.read<RegisterPhoneProvider>().currentPhone);
//                               }
//                               Navigator.of(context).pushNamed("/register/password");
//                             }
//                           : null,
//                         child: const Text("Next"),
//                       );
//                     }
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }
//     );
//   }
// }
