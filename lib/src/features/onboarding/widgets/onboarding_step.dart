// part of '../onboarding_page.dart';

// class OnboardingStep extends StatelessWidget {
//   const OnboardingStep({
//     super.key, 
//     required this.imageName, 
//     required this.description, 
//     required this.isLastStep,
//     this.onNext,
//   });

//   final String description;
//   final VoidCallback? onNext;
//   final String imageName;
//   final bool isLastStep;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 80),
//       child: Column(
//         children: [
//           LayoutBuilder(
//             builder: (context, constraints) {
//               return Image.asset(
//                 imageName,
//                 width: constraints.maxWidth * 0.9,
//                 height: constraints.maxWidth * 0.9,
//                 fit: BoxFit.cover,
//               );
//             }
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: Center(
//               child: Text(
//                 description.toUpperCase(), 
//                 textAlign: TextAlign.center, 
//                 style: Theme.of(context).textTheme.displayMedium!
//                   .copyWith(fontWeight: FontWeight.w900, height: 0.9)   
//               ),
//             ),
//           ),
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               Expanded(
//                 child: TextButton(
//                   child: Text(isLastStep ? "Log in" : "Next"),
//                   onPressed: () => isLastStep
//                     ? () {} // go to log in screen
//                     : onNext?.call(),
//                 ),
//               ),
//               Visibility(
//                 visible: isLastStep,
//                 child: const SizedBox(width: 20)
//               ),
//               Visibility(
//                 visible: isLastStep,
//                 child: Expanded(
//                   child: TextButton(
//                     child: const Text("Register"),
//                     onPressed: () => GoRouter.of(context).push("/register"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
