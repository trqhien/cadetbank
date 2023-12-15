// import 'package:cadetbank/src/core/widgets/cadet_bank_app_bar.dart';
// import 'package:cadetbank/src/core/widgets/loading_overlay.dart';
// import 'package:cadetbank/src/features/app/app_state.dart';
// import 'package:cadetbank/src/features/register/register_password/register_password_provider.dart';
// import 'package:cadetbank/src/features/register/widgets/login_flow_prompt_text.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class RegisterPasswordPage extends StatelessWidget {
//   const RegisterPasswordPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => RegisterPasswordProvider(
//         currentPassword: context.read<AppState>().registerData?.password,
//         currentConfirmedPassword: context.read<AppState>().registerData?.confirmPassword
//       )..validatePasswords(),
//       builder: (context, _) {
//         return LoadingOverlay(
//           isLoading: context.watch<RegisterPasswordProvider>().isLoading,
//           child: Scaffold(
//             // appBar: CadetBankAppBar.pushStyle(
//             //   actions: [
//             //     IconButton(
//             //       icon: Image.asset(
//             //         "assets/icons/Bills-2.png",
//             //         width: 18,
//             //         height: 18,
//             //         fit: BoxFit.cover,
//             //       ),
//             //       splashColor: Colors.transparent,
//             //       highlightColor: Colors.transparent,
//             //       onPressed: () {
//             //         Navigator.of(context).pushNamed("/register/preview");
//             //       },
//             //     ),
//             //   ],
//             // ),
//             body: SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.all(32),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Text(
//                       "Create your password",
//                       style: Theme.of(context).textTheme.headlineSmall!
//                         .copyWith(fontWeight: FontWeight.w600),
//                     ),
//                     const SizedBox(height: 24),
//                     TextFormField(
//                       initialValue: context.read<AppState>().registerData?.password,
//                       keyboardType: TextInputType.text,
//                       autocorrect: false,
//                       style: Theme.of(context).textTheme.titleSmall!
//                         .copyWith(fontWeight: FontWeight.w600),
//                       onChanged: context.read<RegisterPasswordProvider>().onPasswordChanged,
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         hintText: "Enter your password",
//                         errorStyle: const TextStyle(fontSize: 10),
//                         errorText: context.watch<RegisterPasswordProvider>().passwordErrorText
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     TextFormField(
//                       initialValue: context.read<AppState>().registerData?.confirmPassword,
//                       keyboardType: TextInputType.text,
//                       autocorrect: false,
//                       style: Theme.of(context).textTheme.titleSmall!
//                         .copyWith(fontWeight: FontWeight.w600),
//                       onChanged: context.read<RegisterPasswordProvider>().onConfirmedPasswordChanged,
//                       decoration: InputDecoration(
//                         labelText: "Confirm Password",
//                         hintText: "Re-enter your password",
//                         errorStyle: const TextStyle(fontSize: 10),
//                         errorText: context.watch<RegisterPasswordProvider>().confirmPasswordlErrorText
//                       ),
//                     ),
//                     const SizedBox(height: 32),
//                     const LogInFlowPromptText(),
//                     const Spacer(),
//                     Text(context.watch<RegisterPasswordProvider>().apiErrorText ?? ""),
//                     const SizedBox(height: 20),
//                     Selector2<RegisterPasswordProvider, AppState, bool>(
//                       selector: (context, registerPasswordProvider, appState) => registerPasswordProvider.isRegisterValid 
//                         || appState.debug,
//                       builder: (context, isRegisterValid, _ ) {
//                         return TextButton(
//                           onPressed: isRegisterValid
//                             ? () async {
//                                 // Call register API
//                                 final appState = context.read<AppState>();

//                                 final res = await context
//                                   .read<RegisterPasswordProvider>()
//                                   .register(
//                                     email: appState.registerData?.email ?? "",
//                                     accountType: appState.registerData?.accountType ?? "",
//                                     phone: appState.registerData?.phoneNumber ?? ""
//                                   );

//                                 if (res != null)  {
//                                   // Reset registered data back to null
//                                   appState.resetRegisterData();

//                                   // update current user
//                                   context.read<AppState>().updateCurrentUser(res.user);

//                                   // Push to next sreen
//                                   Navigator.of(context).pushNamed("/register/successful");
//                                 }
//                               }
//                             : null,
//                           child: const Text("Done"),
//                         );
//                       }
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       }
//     );
//   }
// }
