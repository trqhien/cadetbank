class LogEvents {
  const LogEvents._();
  static String logButtonTapped(String name) => 'Tapped button: $name';
  static String logScreenVisit(String name) => 'Move to screen: $name';
  static String logFullScreenVisit(String name) => 'Opened full screen: $name';
  static String logFullScreenDeepLink(String name) =>
      'Opened full screen from native: $name';
  static String logFullScreenBottomSheet(String name) =>
      'Opened full screen bottom sheet: $name';
  static String logApiCall(String endpoint) =>
      'Calling API endpoint: $endpoint';
  static String logApiError(String msg) => 'Received API Error: $msg';
  static String logAdditionalData(String msg) => 'Additional Data: $msg';
  static String logTier2Error(String msg) => 'Received Tier 2 Error: $msg';
  static const logBackButtonPressed = 'Screen back button pressed.';
  static String logBtnTapException(String e) =>
      'A button tap caused an exception: $e';
  static const modalTag = '[Modals] ';
  static String logDisplayModal(String title) =>
      'Displaying modal with title: $title';
}
