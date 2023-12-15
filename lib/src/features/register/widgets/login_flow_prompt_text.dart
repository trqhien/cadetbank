// import 'package:cadetbank/src/core/styling/colors.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// class LogInFlowPromptText extends StatelessWidget {
//   const LogInFlowPromptText({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       textAlign: TextAlign.center,
//       text: TextSpan(
//         style: Theme.of(context).textTheme.bodyMedium!,
//         children: [
//           const TextSpan(text:"Already have an account? "),
//           TextSpan(
//             text:"Log in",
//             style: Theme.of(context).textTheme.bodyMedium!
//               .copyWith(
//                 color: CustomColors.primaryGreenColor,
//                 fontWeight: FontWeight.w600
//               ),
//             recognizer: TapGestureRecognizer()
//               ..onTap = () {
//                 Navigator.of(context).pushReplacementNamed("/login");
//               }
//           )
//         ],
//       ),
//     );
//   }
// }