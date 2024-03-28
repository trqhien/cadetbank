import 'package:intl/intl.dart';

class Strings {
  const Strings._();

  static const defaultFCICode = 'FCI-100';

  //* Setup
  static const csvSplitter = ',';
  static const crashlyticsPackageName = 'Maya_Restricted_Login_Flow';
  static const packageName = "restricted_login_flow";
  static const rootBundlePackageName = 'packages/$packageName/';
  static const locale = "en-PH";

  //* Function
  static String formattedBalanceWithPesoSign(double balance) =>
      '₱${NumberFormat("#,##0.00", locale).format(balance)}';

  //* Generic
  static const commonWallet = "Wallet";
  static const commonSavings = "Savings";

  //* Button Label
  static const buttonLabelMessageUs = "Message us";
  static const buttonLabelGoToHelpCenter = "Go to Help Center";
  static const buttonLabelLogOut = "Log out";

  //* Blocked States
  static const blockedGenericTitle = "Your account has been locked for now";
  static const blockedGenericBody =
      "To keep your account secure, your transactions have been put on hold for now. \nPlease message us to unlock your account.";
  static const blockedFciTitle = "Your account has been locked";
  static const blockedFciBody =
      "Visit our Help Center for more information on this account's status";

  //* Current Balances
  static const currentBalancesTitle = "Your current balances";
  static const currentBalancesInformationWithAccounts =
      "Your money (including Crypto and Funds) is safe. Any outstanding balance for Credit and Personal Loan will remain due until paid.";
  static const currentBalancesInformationWithoutAccounts =
      "We're unable to show your current balances right now. Rest assured, your money (including Crypto and Funds)  is safe.";

  //* URL launcher
  static const uriSchemeMailTo = "mailto";
  static const messageUsEmail = "support@maya.ph";
  static const helpCenterLink = "https://www.maya.ph/upgrade";
}

extension StringExtensions on String {
  List<String> separateStringWithToken(String token) {
    final list = replaceAll(RegExp(r"\s+"), "").split(token).toSet().toList()
      ..removeWhere((pin) => pin.isEmpty);

    return list;
  }

  String get scrubbedWithSensitiveInfo => (contains('+639') ||
          contains('msisdn') ||
          contains('639') ||
          contains('09'))
      ? 'Data hidden due to possible PII'
      : this;
}
