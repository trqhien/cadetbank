// import 'package:flutter/material.dart';

// class DepositToSavingsAmtScreenArgs {
//   final DepositModel depositModel;
//   final bool isFromGoalDetails;
//   final bool isFromFundSource;
//   final bool isFromDashboard;

//   DepositToSavingsAmtScreenArgs({
//     required this.depositModel,
//     this.isFromGoalDetails = false,
//     this.isFromFundSource = false,
//     this.isFromDashboard = false,
//   });
// }

// class DepositToSavingsAmountScreen extends StatelessWidget {
//   final DepositToSavingsAmtScreenArgs screenArguments;

//   const DepositToSavingsAmountScreen(this.screenArguments);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<DepositToSavingsAmountScreenCubit>(
//       create: (_) => GetIt.I.get()..init(screenArguments.depositModel.amount),
//       child: Scaffold(
//         appBar: CustomAppBar(
//           onBackButtonPressed: () {
//             if (PayMayaRouter.isFromRedirect) {
//               PayMayaRouter.isFromRedirect = false;
//               PayMayaRouter.redirectToRoute(
//                 context,
//                 routeName: PayMayaRouter.savingDetails,
//                 arguments: screenArguments.depositModel.savingAccountInfo.id,
//               );
//             } else if (screenArguments.isFromDashboard) {
//               context.read<HomeScreenCubit>().onWillPop();
//             } else {
//               Navigator.of(context).pop();
//             }
//           },
//           title: FormStepsIndicator(
//             stepsNumber: screenArguments.isFromFundSource
//                 ? Constants.dashboardDepositSteps
//                 : screenArguments.isFromGoalDetails
//                     ? Constants.detailsDepositSteps
//                     : 2,
//             currentStep: screenArguments.isFromFundSource
//                 ? 3
//                 : screenArguments.isFromGoalDetails
//                     ? 2
//                     : 1,
//           ),
//         ),
//         body: SafeArea(
//           child: BlocConsumer<DepositToSavingsAmountScreenCubit,
//               DepositToSavingsAmountScreenState>(
//             listener: (context, state) => state.mapOrNull(
//               proceed: (data) => Navigator.of(context).pushNamed(
//                 PayMayaRouter.depositToSavingsConfirmation,
//                 arguments: DepositToSavingsConfirmationArgs(
//                   confirmationModel: DepositToSavingsConfirmationModel(
//                     screenArguments.depositModel,
//                     data.wallet,
//                     data.depositAmount,
//                     Strings.commonMyWallet,
//                   ),
//                   isFromDashboard: screenArguments.isFromFundSource,
//                 ),
//               ),
//               reopenHomeScreen: (_) => ReopenHomeScreenUtil().reopen(context),
//             ),
//             builder: (context, state) => state.maybeMap(
//               loading: (_) => const CustomAnimatedLoader(),
//               ready: (state) => _ReadyStateContent(
//                 model: state.model,
//                 isGoal: screenArguments.depositModel.depositToOwnAccountType ==
//                     DepositToOwnAccountType.goalsAccount,
//               ),
//               orElse: () => const SizedBox.shrink(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _ReadyStateContent extends StatelessWidget {
//   final DepositToSavingsAmountModel model;
//   final bool isGoal;

//   const _ReadyStateContent({
//     Key? key,
//     required this.isGoal,
//     required this.model,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(Dimens.spacing24),
//       child: Column(
//         children: [
//           DepositToSavingsAmountScreenTitle(isGoal: isGoal),
//           const SizedBox(height: Dimens.spacing24),
//           _DepositAmountRow(model: model),
//           const Spacer(),
//           RoundedTextButton(
//             enabled: context
//                 .read<DepositToSavingsAmountScreenCubit>()
//                 .continueButtonEnabled(),
//             onPressed: () => context
//                 .read<DepositToSavingsAmountScreenCubit>()
//                 .onContinueClicked(),
//             child: const DepositToSavingsAmountScreenButtonLabel(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class DepositToSavingsAmountScreenButtonLabel extends StatelessWidget {
//   const DepositToSavingsAmountScreenButtonLabel({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       Strings.commonContinue,
//       style: Theme.of(context).jeko.fontSize16!.bold.primaryWhiteColor,
//     );
//   }
// }

// class DepositToSavingsAmountScreenTitle extends StatelessWidget {
//   const DepositToSavingsAmountScreenTitle({
//     Key? key,
//     required this.isGoal,
//   }) : super(key: key);

//   final bool isGoal;

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topLeft,
//       child: Text(
//         isGoal
//             ? Strings.depositToMyGoalTitle
//             : Strings.depositToSavingsAmountTitle,
//         style: Theme.of(context).h4,
//       ),
//     );
//   }
// }

// class _DepositAmountRow extends StatefulWidget {
//   final DepositToSavingsAmountModel model;

//   const _DepositAmountRow({Key? key, required this.model}) : super(key: key);

//   @override
//   _DepositAmountRowState createState() => _DepositAmountRowState();
// }

// class _DepositAmountRowState extends State<_DepositAmountRow> {
//   late TextEditingController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = TextEditingController(
//       text: widget.model.depositAmount != null
//           ? Strings.formattedBalance(widget.model.depositAmount!)
//           : '',
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomTextFormField(
//       onTextChanged:
//           context.read<DepositToSavingsAmountScreenCubit>().onAmountChanged,
//       controller: _controller,
//       inputFormatters: [
//         EmptyNumberFormatter(),
//         DecimalTextInputFormatter(decimalRange: 2),
//       ],
//       labelText: Strings.commonDepositAmount,
//       prefixText: Strings.currencySymbol,
//       hintText: Strings.depositToSavingsAmountHint,
//       bottomInfoText: Strings.walletBalanceMessage(
//         Strings.formattedBalance(
//           widget.model.wallet.balance,
//         ),
//       ),
//       textInputType: const TextInputType.numberWithOptions(decimal: true),
//       validationData: widget.model.validation,
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
