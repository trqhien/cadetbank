class Strings {
  //* === Values ===

  static const mayaBankInc = "Maya Bank, Inc.";

  //* Setup
  static const packageName = "coreui";
  static const packageNameFullScreen = "paymaya_consumer_savings_fullscreen";
  static const rootBundlePackageName = 'packages/$packageName/';
  static const locale = "en-PH";

  //* Generic
  static const commonRemove = "Remove";
  static const commonTryAgain = "Try again";
  static const commonContinue = "Continue";
  static const commonMaybeLater = "Maybe later";
  static const commonGotIt = "Got it";
  static const commonLearnMore = "Learn more";
  static const commonShowMore = 'Show more';
  static const commonYes = "Yes";
  static const commonNo = "No";
  static const commonDone = "Done";
  static const commonDepositAmount = "Deposit amount";
  static const commonDeposit = "Deposit";
  static const commonMyWallet = "My Wallet";
  static const commonMyPersonalGoals = "My personal goals";
  static const commonNote = "Note";
  static const commonTransferMoney = 'Transfer my money';
  static const commonTransfer = 'Transfer';
  static const commonTransferDisclaimer =
      'By continuing, I confirm that the details of this transfer are correct and as intended.';
  static const commonFrom = 'From';
  static const commonCancel = 'Cancel';
  static const commonMySavings = "My Savings";
  static const savingsAccountTitle = "My Savings";
  static const commonMayaWallet = "Maya Wallet";
  static const commonMayaSavings = "Maya Savings";
  static const commonPesoNet = "PESONet";
  static const commonInstaPay = "InstaPay";
  static const commonFinish = "Finish";
  static const commonFree = 'FREE';
  static const commonSwipeLeft = '👈 Swipe left to delete a favorite';
  static const commonCancelAccount = 'Cancel account';
  static const commonBack = 'Back';

  //* Errors
  static const defaultErrorCaption = "That didn't load right.";
  static const defaultErrorMessage =
      "We ran into a connection issue.\nPlease try again in a bit.";

  static const dailyLimitErrorCaption = 'You\'ve been busy!';
  static const dailyLimitErrorMessage =
      'You\'ve reached your transfer limit for today. Please try again tomorrow. \n\nVisit your profile for more about account limits.';
  static const monthlyLimitErrorCaption = 'You\'ve been busy!';
  static const monthlyLimitErrorMessage =
      'You\'ve reached your transfer limit this month. Please try again next month. \n\nVisit your profile for more about account limits.';
  static const invalidPinCodeErrorMessage = 'Invalid pin code.';
  static const timeOutErrorMessage = 'Session timeout';
  static const nullValueErrorMessage = 'Null value';
  static const maintenanceModeMessage = 'Maintenance Mode';

  static const validationInvalidCharacters = 'Invalid characters';
  static const validationFieldCannotBeEmpty = 'Field cannot be empty';
  static const validationAccountNameTooShort = 'Account name too short';
  static const validationAccountNameTooLong = 'Account name too long';
  static const validationAccountNameInstapayLength =
      'Max 30 characters to transfer using InstaPay';
  static const validationAccountNamePesonetLength =
      'Max 40 characters to transfer using PESONet';
  static const validationNameTooLong = 'Name too long';
  static const vaidationNameNumericOnly = "Please enter a valid account name";
  static const validationNoteTooLong = 'Note too long';

  static const validationAccountNumberInvalid = "Invalid account number";
  static const validationPhoneNumberInvalid = "Invalid mobile number";
  static const validationSpecialCharacters =
      "Please use letters and numbers only";
  static const validation1MonthMinimum = "Must be at least one month";
  static const validationGoalNameExists =
      'You already have a goal with this name';
  static const validationGoalMaxCharLim = 'Up to 20 characters only';
  static const validationTextOwnAccountNumber =
      "You can't transfer to your own Savings account";
  static const validationTextFavoriteNameExists =
      "Please select a different name";
  static const validationTextZipCodeInvalid = "Please enter a valid Zip code";
  static const validationTextFieldRequired = "This field is required";
  static const transferErrorModalTitle = "Couldn't complete transfer";
  static const transferErrorModalInstapaySubtitle =
      'Please try an InstaPay transfer again in a few minutes.';
  static const transferErrorModalPesonetSubtitle =
      'Please try a PESONet transfer again in a few minutes.';

  //* Account Creation
  static const totalSavings = "Total savings";
  static const myAccount = "My Account";
  static const accountDetails = "View account details";
  static const fullName = "Full Name";
  static const fullNameHint = "Enter the full name";
  static const relationship = "Relationship";
  static const relationshipHint = "Select an option";
  static const openSavingsButtonText = "Open savings account";
  static const startSavingsButtonText = "Start my savings";
  static const personalSavingsIntroTitle = "All set!";
  static const personalSavingsIntroInfo =
      "Your savings account is ready to roll. You can find it under My Accounts.";
  static const goalsIntroInfo =
      "Your personal goal is good to go. You can find it under My Accounts.";

  //* Extended Goal Account Creation Confirmation
  static const extendedGoalAccountCreationConfirmationHeader =
      'Confirm details';
  static const extendedGoalAccountCreationConfirmationSubheader =
      'Please make sure your details are correct';
  static const extendedGoalAccountCreationConfirmationLabelColumnName =
      'Interest';
  static const extendedGoalAccountCreationConfirmationValueColumnName =
      'Paid monthly';
  static const extendedGoalAccountCreationConfirmationBaseInterestLabel =
      'Base interest';
  static const extendedGoalAccountCreationConfirmationBoosterInterestLabel =
      'Booster interest';
  static const extendedGoalAccountCreationConfirmationBoosterInterestSublabel =
      '(upon reaching target amount)';
  static const extendedGoalAccountCreationConfirmationBoosterMainInfoText =
      'By confirming your goal details, you agree that';
  static const extendedGoalAccountCreationConfirmationBoosterBullet1 =
      'If you cancel before the end date, withholding tax and a cancellation fee will be charged. Interest incurred after the start of the final month will not be awarded.';
  static const extendedGoalAccountCreationConfirmationBoosterInfoTextBullet2 =
      'You agree to have read, understood, and accepted our ';
  static const extendedGoalAccountCreationConfirmationBoosterInfoTextBullet2Terms =
      'Terms and Conditions';
  static const extendedGoalAccountCreationConfirmationBoosterInfoTextBullet2And =
      ' and our ';
  static const extendedGoalAccountCreationConfirmationBoosterInfoTextBullet2Privacy =
      'Privacy Policy';

  //* Extended Goal Account Creation Success
  static const extendedGoalAccountCreationSuccessHeaderPretext = 'Your ';
  static const extendedGoalAccountCreationSuccessHeaderPosttext = 'is ready!';
  static const extendedGoalAccountCreationSuccessDisclaimer =
      '🤑 Make a deposit now to start earning';
  static const extendedGoalAccountCreationSuccessGoalName = 'Name';
  static const extendedGoalAccountCreationSuccessEndDate = 'End date';
  static const extendedGoalAccountCreationSuccessTargetAmount = 'Target amount';
  static const extendedGoalAccountCreationSuccessAccountNumber =
      'Account number';

  //* Extended Goal Badge
  static const extendedGoalBadgeHowToTitle = "How to get your badges";
  static const extendedGoalBadgeUnlocked = "Badge unlocked";
  static const extendedGoalFifthBadgeSuccessMessage = "";
  static const extendedGoalFirstBadgeHowToDescription =
      "Make your first deposit";
  static const extendedGoalFifthBadgeHowToDescription =
      "Keep going until your target date";

  //* Extended Goal Completion Bottom Sheet
  static const extendedGoalCompletionDisclaimer =
      "Your total earnings, including interest earned less taxes, has been transferred to your Maya Savings account.";

  //* Product Types
  static const productTypeMayaSavings = "My Savings";
  static const productTypePersonalGoal = "Personal Goal";
  static const productTypeEG3Months = "3 months";
  static const productTypeEG6Months = "6 months";
  static const productTypeEG12Months = "12 months";

  //* Util values
  static const amountHidden = "₱••••••••";

  static const phoneNumberPrefix = "+63 ";

  static const bulletPoint = "•";

  static const currencySymbol = "₱";
  static const obscuredCurrencyValue = "$currencySymbol••••••••";
  static const depositSign = "+";
  static const withdrawalSign = "-";
  static const emptySavingsAmount = "₱ 0.00";
  static const defaultNoAmount = '--';

  //* Home Screen
  static const homeScreenEmptyButtonCreateSavingsAccountTitle =
      "🐷 Start saving now";
  static const homeScreenEmptyButtonCreateGoalsAccountTitle =
      "💪 Create a personal goal now";
  static const homeScreenEarlyAccessStateTitle =
      "Maya Savings is\nin early access.";
  static const homeScreenEarlyAccessStateSubtitle =
      "Just a bit more and it’ll be ready\nfor you. Stay on the lookout for\nthe full launch!";
  static const homeScreenMayaSavingsPoweredByTitle =
      "Maya Savings is powered by Maya Bank, Inc.";
  static const homeScreenPersonalGoals = "PERSONAL GOALS";
  static const homeScreenAddAnAccount = "Add an account";
  static const homeScreenCreateNewGoal = 'Create a goal';
  static const homeScreenGoal = "GOAL";
  static const homeScreenStartPersonalGoalTileTitle = "Create a personal goal";
  static const homeScreenStartPersonalGoalTileSubtitle =
      "Earn 6% interest p.a.";
  static const homeScreenStartSavingsAccountTitle =
      "Give your money room to grow";
  static const homeScreenStartSavingsAccountSubtitle =
      "Start a savings account";
  static const homeScreenDepositToAnyAccount = "Deposit to any account";
  static const homeScreenBspDisclosureInfo1 =
      "Maya Bank, Inc. is regulated by the Bangko Sentral ng Pilipinas - ";
  static const homeScreenBspDisclosureInfoDisplayUrl = "bsp.gov.ph";
  static const homeScreenBspDisclosureInfo2 =
      ". Deposits are insured by PDIC up to ₱500,000 per depositor";
  static const homeScreenBspDisclosureContactLinkText = "Contact us";
  static const homeScreenBspDisclosureContact =
      " for any concerns or send us an email to ";
  static const homeScreenBspBottomSheetTitle = "Contact Customer Support";
  static const homeScreenBspBottomSheetDomesticSubtitle = "Domestic toll-free";
  static const savingsCustomerSupportDomesticNumber = "1 800 1084 57788";
  static const homeScreenBspBottomSheetChat = "Chat with us";
  static const homeScreenDepositRequired = 'DEPOSIT REQUIRED';
  static const homeGoalTileCompleted = 'Completed';

  //* Kept here as fallback values in case BFF returns nothing so that the UI won't look empty
  static const homeScreenStartSavingsBannerTitle =
      'Give your money room to grow';
  static const homeScreenStartSavingsBannerSubtitle =
      'Earn up to 6% interest p.a.';

  static const homeScreenSavingsAccount = 'Savings account';
  static const homeScreenSavingsAccountTileTitle = "Start saving";
  //* Kept here as fallback values in case BFF returns nothing so that the UI won't look empty
  static const homeScreenSavingsAccountTileDescription =
      "Enjoy an intro rate of 6% interest p.a.";
  static const homeScreenSavingsAccountDescription =
      'Your main account with standard interest rates';
  static const homeScreenPersonalGoal = 'Personal goal';
  static const homeScreenPersonalGoalDescription =
      'Earn 6% interest p.a. on goals that run for six months';
  static const homeScreenDepositToAccount = 'Deposit';
  static const homeScreenTransfer = 'Transfer';
  static const pigEmoji = '🐷';
  static const moneyTongueEmoji = '🤑';
  static const rocketEmoji = '🚀';
  static const fireEmoji = '🔥';
  static const homeNewAccountButtonTitle = 'Create a new account';
  static const homeNewAccountButtonSubtext = '🚀 Earn up to 6.5% p.a.';
  static const homeNewAccountButtonTitleFull = 'You’ve hit your account limit';
  static const homeNewAccountButtonSubtextFull =
      'Finish existing goals to create more';

  //* Account Details
  static const savingsYourInterestTitle = "Your interest";
  static const savingsCurrentRate = "Current rate";
  static const savingsInterestEarnedThisMonth = "Interest earned this month";
  static const savingsTransactionHistoryTitle = "Transactions";
  static const savingsTransactionAccountStarted = "Created account";
  static const savingsTransactionAccountStartedSub = "My savings";
  static const goalsTransactionAccountStartedSub = "My personal goal";
  static const savingsBlockedAccountHeader =
      "Your account has been temporarily blocked due to security concerns";
  static const savingsBlockedAccountInfo =
      "Unblock your account and resume transactions by calling us at ";
  static const savingsCustomerSupportLocalNumber = "+63 2 8845 7788";
  static const savingsCustomerSupportStandardRates =
      "Standard call rate applies";

  //* Extended Goal common
  static const tdPlusTitle = 'Time Deposit ';

  //* Extended Goal Dashboard
  static const pieChartDaysLeft = 'days left';
  static const egDashboardAccountDetails = "Account details";
  static const egDisabledDepositNow = 'Deposit now to start earning';
  static const egPaidMonthly = 'Paid monthly on your average daily balance';
  static const egDashboardBaseRateLabel = 'BASE RATE';
  static const egDashboardBoosterRateLabel = 'BOOSTER RATE';

  //* Account Creation Intro
  static const startSavingsIntroTitle = "Give your money room to grow.";
  static const startSavingsIntroContent =
      "Start a savings account with Maya today.";
  static const startGoalsIntroTitle = "Hit your goals out the park";
  static const startGoalsIntroContent =
      "Save up for a trip, a new phone, or a side hustle and earn a higher interest.";
  static const startGoalsButtonText = "Continue";
  static const startGoalsInfoText =
      'To use Personal Goals, you first need a Savings account. Tap below to start.';

  //* Bottom Sheet
  static const termsAndConditionsBottomSheetTitle = "Terms and Conditions";
  static const privacyNoticeBottomSheetTitle = "Privacy notice";

  //* FATCA-related
  static const startSavingsFatcaTitle =
      "Some legal declarations before we finish.";

  static const startSavingsAdditionalDeclarations = 'ADDITIONAL DECLARATIONS';

  static const startSavingsBankEmployeeCheckbox =
      'I am employed by or have relatives employed by Maya Bank, Inc.';

  static const startSavingsFatcaUsResidentCheckbox =
      'I am a citizen, resident, or green card holder of the United States.';

  static const startAccountPrivacyDisclaimer1 =
      'By checking, you consent to Maya Bank, Inc.’s ';

  static const startAccountPrivacyDisclaimerTermsAndConditions =
      'terms and conditions';

  static const startAccountPrivacyDisclaimer2 = ' and ';

  static const startAccountPrivacyDisclaimer3 = 'privacy policy';

  static const startAccountPrivacyDisclaimer4 =
      ' and certify that your information is true and complete.';

  //* DOSRI-related
  static const startSavingsUsCitizenTitle = 'Are you sure you are a US person?';
  static const startSavingsUsCitizenContent =
      'This feature is unavailable to citizens, residents, and green card holders of the United States for now.';

  static const fatcaBlockedTitle = "We can't set you up right now";
  static const fatcaBlockedSubtitle =
      "This feature is unavailable to citizens, residents, and green card holders of the United States for now.\n\nFeel free to explore Maya's other services!";
  static const fatcaBlockedBtnText = "Back Home";

  static const startSavingsConsanguinitySubtitle =
      "Are you or any of your relatives employed by Maya Bank, Inc.?";

  static const startSavingsConsanguinityLearnMoreTitle =
      "Declaration of Employment and/or Identification of "
      "Relatives in Maya Bank";
  static const startSavingsConsanguinityContentDefinition =
      "It is understood that relative within the second degree either of consanguinity or affinity refers to the following:";
  static const startSavingsConsanguinityContentConsanguinity =
      "\n\nCONSANGUINITY";
  static const startSavingsConsanguinityContentConsanguinity1 =
      "\nIncludes individuals related by blood";
  static const startSavingsConsanguinityContentConsanguinity2 =
      "\n• First Degree: ";
  static const startSavingsConsanguinityContentConsanguinity3 =
      "Father and Mother, Son and Daughter";
  static const startSavingsConsanguinityContentConsanguinity4 =
      "\n• Second Degree: ";
  static const startSavingsConsanguinityContentConsanguinity5 =
      "Brother and Sister, Grandfather and Grandmother, Grandson and Granddaughter";

  static const startSavingsConsanguinityContentAffinity = "\n\nAFFINITY";
  static const startSavingsConsanguinityContentAffinity1 =
      "\nIncludes the spouse and individuals related to the spouse";
  static const startSavingsConsanguinityContentAffinity2 = "\n• First Degree: ";
  static const startSavingsConsanguinityContentAffinity3 =
      "Spouse, Father-in-law and Mother-in-law, Son-in-law and Daughter-in-law";
  static const startSavingsConsanguinityContentAffinity4 = "\n• Second Degree:";
  static const startSavingsConsanguinityContentAffinity5 =
      "Brother-in-law and Sister-in-law, Grandfather-in-law and Grandmother-in-law, Grandson-in-law and Granddaughter-in-law";

  static const startSavingsConsanguinityRelativesTitle =
      "Declare your relatives";
  static const startSavingsConsanguinityRelativesAdd = "Add a relative";
  static const startSavingsConsanguinityImEmployed =
      "I’m employed by Maya Bank, Inc.";

  static const startSavingsConsanguinityRelativeOptionTitle =
      "How is this person related to you?";
  static const startSavingsConsanguinityBrother = "Brother";
  static const startSavingsConsanguinityBrotherInLaw = "Brother-in-law";
  static const startSavingsConsanguinityDaughter = "Daughter";
  static const startSavingsConsanguinityFather = "Father";
  static const startSavingsConsanguinityFatherInLaw = "Father-in-law";
  static const startSavingsConsanguinityGranddaughter = "Granddaughter";
  static const startSavingsConsanguinityGranddaughterInLaw =
      "Granddaughter-in-law";
  static const startSavingsConsanguinityGrandfather = "Grandfather";
  static const startSavingsConsanguinityGrandfatherInLaw = "Grandfather-in-law";
  static const startSavingsConsanguinityGrandmother = "Grandmother";
  static const startSavingsConsanguinityGrandmotherInLaw = "Grandmother-in-law";
  static const startSavingsConsanguinityGrandson = "Grandson";
  static const startSavingsConsanguinityGrandsonInLaw = "Grandson-in-law";
  static const startSavingsConsanguinityMother = "Mother";
  static const startSavingsConsanguinityMotherInLaw = "Mother-in-law";
  static const startSavingsConsanguinitySister = "Sister";
  static const startSavingsConsanguinitySisterInLaw = "Sister-in-law";
  static const startSavingsConsanguinitySon = "Son";
  static const startSavingsConsanguinitySpouse = "Spouse";
  static const startSavingsPrivacyPolicyTitle = "Create a savings account";
  static const startSavingsPrivacyPolicySubtitle =
      "Please review the conditions below and check the boxes that may apply to you";

  //* OTP
  static const oneTimePinTitlePart1 = "One-time ";
  static const oneTimePinTitlePart2 = "PIN";
  static const oneTimePinLongDash = "—";
  static const oneTimePinVerify = "Verify";
  static const oneTimePinResendCode = "Resend Code";
  static const oneTimePinNeedHelpThinkingEmoji = "🤔";
  static const homeSavingsEarlyAccessThinkingEmoji = "🤔";
  static const needHelpTitle = "Need help?";
  static const needHelpInfoPart1 = "Visit our ";
  static const needHelpInfoPart2 = "Help Center ";
  static const needHelpInfoPart3 = "to learn more";
  static const oneTimePinInvalidPin = "Invalid OTP";
  static const oneTimePinInvalidPinEmoji = "😮";
  static const oneTimePinInvalidPinMessage =
      "Please double-check the OTP\nwe texted you and try again.";

  //* Deposit and Transfer Flows
  static const transferSpecifyAmountTitle = "Specify the amount";
  static const depositToSavingsAmountTitle = "Deposit to my account";
  static const depositToMyGoalTitle = 'Deposit to my goal';
  static const depositToSavingsAmountHint = "Enter deposit amount";
  static const depositToSavingsConfirmationTitle = "Confirm deposit";
  static const depositToSavingsConfirmationFundSource = "Source";
  static const depositToSavingsConfirmationDestination = "Destination";

  //* Receipt
  static const receiptAutoCashIn = 'Auto cash in';
  static const receiptInterestDaily = "Daily Interest";
  static const receiptInterestEarned = "Interest earned";
  static const receiptTaxWithheld = "Tax Withheld";
  static const receiptBonusInterest = "Bonus Interest";
  static const receiptDepositMoney = "Deposited money";
  static const receiptTransferMoney = "Transferred money";
  static const receiptReceiveMoney = "Received money";
  static const receiptProcessingStatus = "Processing";
  static const receiptCompletedStatus = "Completed";
  static const receiptFailedStatus = "Failed";
  static const receiptDepositAgain = 'Deposit again';
  static const receiptTransferAgain = 'Transfer again';
  static const receiptShareOrSave = 'Share or save this receipt';
  static const receiptReportAnIssue = 'Report an issue';
  static const receiptSaveToFavorites = 'Save to favorites';
  static const receiptSource = 'Source';
  static const receiptDestination = 'Destination';
  static const receiptInterestEarnedOn = 'Interest earned on';
  static const receiptTransactionDetails = 'Transaction details';
  static const receiptTransactionFee = 'Transaction fee';
  static const receiptGateway = 'Gateway';
  static const receiptInvoiceNo = 'Invoice number';
  static const receiptSequenceId = 'Sequence ID';
  static const receiptMoreActions = 'MORE ACTIONS';
  static const receiptMayaSavings = "Maya Savings";
  static const favoritesMayaSavings = "Maya savings";
  static const receiptMayaWallet = "Maya Wallet";
  static const receiptPersonalGoal = "Personal Goals";
  static const receiptTimeDepositPlus = "Time Deposit Plus";
  static const swineEmoji = "🐷";
  static const receiptReferenceId = "Reference ID";
  static const receiptNote = "Note";
  static const receiptMaxFavorites = "You can't add any more favorites!";
  static const receiptScreenshotShareOrSave = "Share or save receipt";
  static const receiptScreenshotShare = "Share";
  static const receiptScreenshotSave = "Save to gallery";
  static const receiptScreenshotSuccess = "Success";
  static const receiptScreenshotSavedSuccessfully =
      "Screenshot has been saved successfully";
  static const receiptRunningBalanceLabel = 'Updated balance';

  //* Transfers - Generic
  static const transfersMayaBankName = "Maya Bank, Inc.";
  static const transfersFromMySavings = "🐷 My Savings";
  static const transfersAccountName = "Account name";
  static const transfersAccountNameHint = "Enter account name";
  static const transfersAccountNumber = "Account number";
  static const transfersAccountNumberHint = "Enter account number";
  static const transfersAmount = "Transfer amount";
  static const transfersAmountHint = "Enter transfer amount";
  static const transfersNoteOptional = "Note (Optional)";
  static const transfersNote = "Note";
  static const transfersNoteHint = "Add a note";
  static const transfersConfirmTransfer = "Confirm transfer";
  static const transfersPickDestinationTitle = "Select a destination";
  static const transfersTransferToMyAccount = "TRANSFER TO MY ACCOUNT";
  static const transfersToMySavingsAccounts = "My savings accounts";
  static const transfersOtherMayaWallet = "Maya Wallet";
  static const transfersOtherMayaSavings = "Maya Savings";
  static const transfersOtherBankAccounts = "Other banks & wallets";
  static const transferToOtherBankAccountsDetailsTitle =
      "Transfer to other banks";
  static const transferToOtherMayaWalletTitle = "Transfer to other Maya wallet";
  static const transferToOtherMayaSavingsTitle =
      "Transfer to other Maya savings";
  static const intrabankTransferToMyWallet = "TO MY WALLET";
  static const intrabankTransferAnotherWalletNumberMobileNumber =
      "Mobile number";
  static const intrabankTransferAnotherWalletNumberMobileNumberHint =
      "ex. +63 916 123 4567";

  //* Account Details Screen
  static const accountDetailsTitle = "Account details";
  static const accountDetailsAccountName = "Account name";
  static const accountDetailsGoalName = "Goal name";
  static const accountDetailsAccountType = "Account type";
  static const accountDetailsOpeningDate = "Start date";
  static const accountDetailsDueDate = "Due date";
  static const accountDetailsEndDate = "End date";
  static const accountDetailsInterestRate = "Interest rate";
  static const accountDetailsBaseInterest = "Base interest";
  static const accountDetailsBoosterInterestRate = "Booster interest";
  static const accountDetailsBankCertificate = "Bank certificate";
  static const accountDetailsTermsAndConditions = "View terms and conditions";
  static const accountDetailsAccountNumber = "Account number";
  static const accountDetailsRequestBankCert = "Request a bank certificate";
  static const accountDetailsRequestBankCertSubtitle =
      "This will replace your existing certificate";
  static const accountDetailsRequestBankCertSectionTitle = "BANK CERTIFICATE";
  static const accountDetailsPending = "Pending";
  static const accountDetailsBankStatements = "View bank statements";
  static const accountDetailsTransferLimits = "View transfer limits";
  static const accountDetailsViewFAQs = "View FAQs";
  static const accountDetailsBankStatementsTitle = "Bank statements";
  static const accountDetailsBankStatementsLatest = "Latest statement";
  static const accountDetailsBankStatementsDownloadNow = "Download now";
  static const accountDetailsBankStatementsDownload = "Download";
  static const accountDetailsBankStatementsPrevious = "PREVIOUS STATEMENTS";
  static const accountDetailsBankStatementsDisclaimerTitle =
      "Only your last 24 statements are ready to view.";
  static const accountDetailsBankStatementsEmptyTitle = "Nothing here for now.";
  static const accountDetailsBankStatementsEmptyText =
      "You'll start getting bank statements a month after starting your account.";
  static const accountDetailsBankStatementsEmptyButton =
      "Back to account details";
  static const accountDetailsTransferLimitsTitle = "Transfer limits";
  static const accountTypePersonalSavings = "Savings";
  static const dailyLimit = "Daily limit";
  static const monthlyLimit = "Monthly limit";
  static const bankCertificateVisaName = "visa application";
  static const bankCertificateOtherLegalPurposeName = "other legal purposes";
  static const intermediateReceiptYourSavings = "your savings";
  static const intermediateReceiptOtherSavings = "other savings";
  static const intermediateReceiptYourWallet = "your wallet";
  static const intermediateReceiptOtherWallet = "other wallet";
  static const intermediateReceiptAnotherBank = "another bank";
  static const intermediateReceiptPersonalGoal = "personal goal";
  static const intermediateReceiptViewReceipt = "View receipt";
  static const intermediateReceiptSaveToFavorite = "Save details to favorites";

  //* Time ago
  static const day = "day";
  static const days = "days";
  static const hour = "hour";
  static const hours = "hours";
  static const minute = "minute";
  static const minutes = "minutes";
  static const justNow = "Just now";

  //* Tierieng
  static const serviceTier2And3WarningEmoji = '⚠️';
  static const serviceTier2And3WarningText =
      ' Oops! Some information displayed might not be entirely accurate right now. Hang tight and check again in a bit.';

  //* Interest rates related strings
  static const interestRates = 'Interest rates';
  static const interestHowComputed = 'How are interest rates computed?';
  static const interestHowToMaximize = 'Tips to maximize interest gain';
  static const interestHowParagraph1 =
      'Your earned interest is computed daily based on the applicable interest rate, and the actual number of days considered in the computation using this formula:\n\n';
  static const interestHowParagraph2 =
      'End-of-day balance x (interest rate) x (1/365)\n\n';
  static const interestHowParagraph3 =
      'Your total interest earned for the month is the sum of the daily interest earned for each day in the month.\n\n';
  static const interestHowParagraph4 =
      'Please remember that interest rates may change but will only take effect after we notify the public. Accounts considered dormant will earn no interest.\n\n';
  static const interestHowParagraph5 =
      'For the latest interest rates, you can read Annex A of our ';
  static const interestHowTerms = 'Terms and Conditions';
  static const baseInterestPaymentSchedule = 'Paid monthly';
  static const boosterInterestPaymentSchedule =
      'Paid monthly upon reaching target amount';
  //! Currently this is the only paragraph that differs for goal-based interest rate bottom sheet
  //! If the text for how interest is computed on goals changes completely, we would need to add
  //! additional strings below to accommodate that
  static const interestHowGoalP1 =
      'Personal goals with a duration of up to six months earn 6% interest p.a. based on your average daily balance (ADB) of up to PHP 1,000,000.\n\n';

  //* Deposit money bottom sheet related strings
  static const depositSheetHeader = 'Deposit money from';
  static const depositSheetWallet = 'My Wallet';
  static const depositSheetWalletDesc = 'Deposit now in real time';
  static const depositSheetOtherBanks = 'Other banks';
  static const depositSheetOtherBanksDesc = 'Learn to deposit from other banks';

  //* Deposit from other banks screen related strings
  static const depositOtherScreenTitle = 'Deposit from other banks';
  static const depositOtherHeader = 'Deposit via other banks';
  static const depositOtherInstructions =
      'In your other bank app, choose either PESONet or InstaPay and copy your account information below.';

  static const depositOtherBankName = 'Bank name';
  static const depositOtherAccountName = 'Account name';
  static const depositOtherAccountGoalName = 'Goal name';
  static const depositOtherAccountTdName = 'Time Deposit Plus name';
  static const depositOtherAccountNumber = 'Account number';

  //* Transfer-related validation message
  static const transferLimitValidationMsg =
      'Amount should not exceed your account limits';
  static const transferErrorEmptyModel = 'Saving Details Model is empty.';

  //* Savings Intro Success
  static const introDepositNow = "Deposit now";
  static const introDeposit = "Deposit";
  static const introViewDetails = "View details";

  //* Start goals confirm screen strings
  static const startGoalsConfirmTitle = 'Confirm goal';
  static const startGoalsConfirmName = 'Name';
  static const startGoalsConfirmDueDate = 'Due Date';
  static const startGoalsConfirmSavingsDisclaimer =
      "If you don’t have a Savings account when your goal reaches its due date, we’ll automatically create one for you.";
  static const startGoalsConfirmTermsPrivacy1 =
      'By confirming your goal details, you consent to Maya Bank, Inc.’s ';
  static const startGoalsConfirmTermsPrivacy2 = 'terms and conditions';
  static const startGoalsConfirmTermsPrivacy3 = ' and ';
  static const startGoalsConfirmTermsPrivacy4 = 'privacy policy ';
  static const startGoalsConfirmTermsPrivacy5 =
      'and agree to share your data with us.';
  static const startGoalsConfirmConfirm = 'Confirm';

  //* Setup your goal screen strings
  static const setUpYourGoalHeader = 'Set up your goal';
  static const setUpYourGoalSelectMood = 'SELECT A MOOD';
  static const setUpYourGoalGoalDetails = 'GOAL DETAILS';
  static const setUpYourGoalNameField = 'Goal name';
  static const setUpYourGoalNameHint = 'Enter goal name';
  static const setUpYourGoalDueDateField = 'Due date';
  static const setUpYourGoalDueDateHint = 'Select a due date';
  static const setUpYourGoalGoalAmtField = 'Goal amount';
  static const setUpYourGoalGoalAmtHint = 'Enter goal amount';
  static const setUpYourGoalInterestHeader = 'Earn 6% interest p.a.';
  static const setUpYourGoalInterestBody =
      'Personal goals with a duration of up to six months earn 6% interest p.a. based on your average daily balance (ADB) of up to PHP 1,000,000.';
  static const setUpYourGoalContinueButton = 'Continue';
  static const setUpYourGoalSuccessSnackbarMessage =
      'Savings account opened successfully';

  //* Goal cancellation success screen
  static const goalCancellationSuccessHeader = 'All packed up';
  static const goalCancellationSuccessDetails =
      'This goal has now been canceled and your money will be credited to your Maya Savings account.\nYou can always start a new goal under My Accounts.';
  static const goalCancellationSuccessButtonText = 'Back to my account';

  //* Bank certificate purpose selection screen
  static const bankCertificatePurposeSelectionHeader =
      'Purpose of certification';
  static const bankCertificatePurposeSelectionBody =
      'Please tell us what the bank certificate is for:';
  static const bankCertificatePurposeSelectionVisaChoice = 'Visa application';
  static const bankCertificatePurposeSelectionOtherPurposeChoice =
      'Other legal purposes';

  //* Other Bank Transfers
  static const interbankTransferPickerTitle = "Choose a bank";
  static const interbankTransferPickerAllBanks = "ALL BANKS";
  static const interbankChannel = "Channel";
  static const interbankTransferFee = "Transfer fee";
  static const interbankSearchBanks = "Search banks";
  static const interbankSearchBanksEmpty =
      "No results found. Try another keyword.";
  static const interbankServiceUnavailable =
      "Service is temporarily unavailable";
  static const instapayFeeDisclaimer =
      'InstaPay fees might change depending on the transfer amount.';
  static const instapayTransferHeader = 'Transfer via InstaPay';
  static const channelNotAvailable = 'Service is temporarily unavailable';
  static const errorMonthlyLimit =
      "You've reached your monthly amount transfer limit. Please try again on the first day of the next calendar month.";
  static const errorDailyLimit =
      "You've reached your daily amount transfer limit. Please try again tomorrow.";

  //* Backend errors
  static const devErrorCaption = 'Dev Error:';
  static const dioParsingFailed = 'Dio error parsing failed';
  static const devErrorNullResponse = 'Response data was null.';
  static const devErrorEmptyList = 'Response body returned an empty list.';
  static const devErrorNotFound = ' is not found';
  static const devErrorServerError = 'Server 500: ';
  static const devErrorNullResp = 'Network call returned no response data';
  static const devErrorParseFail = 'Data type parsing failed.';
  static const devErrorInvalidFeeParsing =
      'Invalid fee parsing. Type is not double.';

  //* No Internet Messages
  static const noInternetCaption = 'No internet connection.';
  static const noInternetMessage =
      'It appears you are no longer connected to the internet. Please try again later.';

  //* Connection Error Message
  static const connectionErrorCaption = "That didn't load right.";
  static const connectionErrorMessage =
      "We ran into a connection issue.\nPlease try again in a bit.";
  static const connectionGotIt = 'Got it';

  //* Maintenance Mode Message
  static const maintenanceModeCaption = "We'll be back shortly.";
  static const maintenanceModeDescription =
      "We're working our magic to make things\n better for you. Come back again in a while.";

  //* Goal Details
  static const goalDetailsAccountType = 'Personal Goal';
  static const goalDetailsAppBarTitle = 'Goal account';
  static const goalDetailsGoalSettings = 'GOAL SETTINGS';

  //* Extended Goal Details
  static const extendedGoalDetailsAccountType = 'Time Deposit Plus';

  //* Goal Account Details
  static const goalAccountDetailsCancel = 'Cancel my account';
  static const accountDetailsActions = 'MORE ACTIONS';

  //* Transaction Items
  static const transactionOtherBank = 'Other Bank';
  static const transactionOtherBankDefaultName = 'Other bank';

  //* Goal Cancellation
  static const goalCancellationHeader = 'A quick note about \npersonal goals';
  static const goalCancellationBody1 =
      'Goals that are up to six months long earn 6% interest per annum.';
  static const goalCancellationBody2 =
      'By canceling, your accumulated money (deposit and interest earned, less applicable taxes) will be credited to your Maya Savings account.';
  static const goalCancellationTerms = 'View terms and conditions';
  static const goalCancellationDisclaimer =
      'If you don\'t have a Maya Savings account yet, we\'ll automatically create one for you.';
  static const goalCancellationCancel = 'Cancel my goal';

  //* Goal Type Selection
  static const goalTypeSelectionExtendedGoalDetails =
      "Get a boosted rate when you hit your target amount";
  static const goalTypeSelectionExtendedGoalMaxReached =
      "You've hit your Time Deposit Plus count limit. How about opening a Personal Goal? 👇 ";
  static const goalTypeSelectionPersonalGoalTitle = "Personal Goals";
  static const goalTypeSelectionPersonalGoalDetails =
      "Save up for your plans while you earn high interest";
  static const goalTypeSelectionPersonalGoalMaxReached =
      "You've hit your Personal Goal count limit. How about opening a Time Deposit Plus account? 👆";
  static const goalTypeSelectionPersonalGoalCardBody =
      "Start a goal up to 6 months long";
  static const goalCardTypeEndsOn = "Ends on";
  static const sparksEmoji = '✨';
  static const dartEmoji = '🎯';

  //* Extended Goal Creation Form
  static const extendedGoalHeader = 'Set up your';
  static const extendedGoalMoodLabel = 'Select a mood';
  static const extendedGoalNameLabel = 'Name your Time Deposit Plus';
  static const extendedGoalNameHint = 'Enter a name';
  static const extendedGoalAmtLabel = "Target amount";
  static const extendedGoalAmtSubtext =
      "You'll start earning the booster rate when you reach this amount. You can't change this later.";
  static const extendedGoalAmtHint = '₱5,000.00 - 1,000,000.00';
  static const extendedGoalEndDateLabel = 'End date';
  static const extendedGoalEndDateSubtext =
      'Fees and withholding tax will be charged if canceled early';

  //* Extended Goal cancellation success screen
  static const extendedGoalCancellationHeader =
      'Cancel your\nTime Deposit Plus?';
  static const extendedGoalCancellationBody =
      'Fees will be applied if you cancel before the due date. Your money will be transferred to your Maya Savings account.';
  static const extendedGoalCancellationTerms = 'View terms and conditions';
  static const extendedGoalCancellationTableRunningBalance =
      'Time Deposit Plus balance with interest';
  static const extendedGoalCancellationTableDSTFee = 'Documentary stamp tax';
  static const extendedGoalCancellationTableCancelFee = 'Cancellation fee';
  static const extendedGoalCancellationTableTotal = 'Total amount to receive';

  //* Extended Goal cancellation success screen
  static const extendedGoalCancellationSuccessHeader = 'All packed up';
  static const extendedGoalCancellationSuccessDetails =
      'This goal has now been canceled and your money will be credited to your Maya Savings account.\nYou can always start a new goal under My Accounts.';
  static const extendedGoalCancellationSuccessDisclaimer =
      'Your final statement of account (SOA) will be sent to the verified email used in your Maya account.';

  //* Account blocked message
  static const accountBlockedTitle =
      'We’re unable to transfer your account balance';
  static const accountBlockedUnableToTransfer =
      'We’re unable to transfer your account balance to Maya Savings. ';
  static const accountBlockedTransferUnavailable =
      'Transfers from your account are temporarily unavailable. ';
  static const accountBLockedContactSupport =
      'Please contact Customer Support at ';
  static const accountBlockedForAssistance = ' for assistance.';

  //* Save to Favorites screen
  static const saveToFavoritesTitle = 'Save to favorites';
  static const saveToFavoritesSubtitle =
      'Save this transaction so you can do it more quickly next time.';
  static const saveToFavoritesName = 'Name';
  static const saveToFavoritesHint = 'e.g House, Postpaid';
  static const saveToFavoritesSendMoney = 'Transfer money details';
  static const saveToFavoritesSave = 'Save';
  static const saveToFavoritesRecipient = 'Recipient';
  static const saveToFavoritesAccountType = 'Account type';
  static const saveToFavoritesAccountNumber = 'Account number';
  static const saveToFavoritesBank = 'Bank';
  static const saveToFavoritesAmount = 'Amount';
  static const saveToFavoritesBottomSheetTitle = 'Saved to your favorites!';
  static const saveToFavoritesBottomSheetSubtitle =
      'To see your favorites, go to My Savings and tap View favorites.​';
  static const emptyFavoritesListTitle = 'No saved favorites';
  static const emptyFavoritesListSubtitle =
      'You can save a favorite after you complete a transaction.';

  static const saveToFavoritesMaxFavoritesBackToSavingsButton =
      'Back to savings';
  static const saveToFavoritesMaxFavoritesGoToFavoritesButton =
      'Go to favorites';
  static const saveToFavoritesErrorModalTitle =
      'We couldn\'t save your favorite.';
  static const saveToFavoritesErrorModalSubtitle =
      'We ran into a connection issue.\nPlease try again in a bit.';

  //* Snackbar messages
  static const snackbarAccNameCopied = 'Account name copied';
  static const snackbarAccNumCopied = 'Account number copied';
  static const snackbarGoalNameCopied = 'Goal name copied';
  static const snackbarRequestError = 'Max of 1 certificate per day only';

  //* Transfer Savings to Goals
  static const savingsToGoalsSelectAccount = 'Select an account';
  static const savingsToGoalsFrom = 'FROM';
  static const savingsToGoalsTo = 'TO';

  //* Deposit from a Fund Source screen
  static const selectFundSource = 'Select a fund source';
  static const fundSourceMyAccounts = 'MY ACCOUNTS';
  static const fundSourceOtherSources = 'OTHER SOURCES';

  //* Select a destination screen
  static const selectDestination = 'Select a destination';
  static const destinationUnavailable = 'Temporarily unavailable';

  //* Request a bank certificate screen
  static const requestBankCertificateTitle = 'Request a bank certificate now';
  static const requestBankCertificateBody =
      'You can use your bank certificate as legal proof of your Maya Savings account/s.​';
  static const requestBankCertificateDisclaimerTitle =
      "Processing fees will apply";
  static const requestBankCertificateDisclaimerBody =
      "By continuing, I waive my right to bank secrecy laws and allow Maya Bank, Inc. to validate my account details in the bank certificate for the benefit of its recipient.";
  static const requestBankCertificateSendRequest = "Send request";
  static const requestBankCertificateBottomSheetTitle =
      'Your bank certificate is on the way';

  //* Request a bank certificate bottom sheet
  static const bankCertificateSuccessBottomSheetTitle =
      'Your bank certificate is ready!';
  static const bankCertificateSuccessBottomSheetBody =
      'Please download a copy of your certificate from the account details screen.';

  //* Money movement errors
  static const mmCaption = 'You\'ve been busy!';
  static const mmAccountLimitReached =
      'You\'ve reached your account limit with Maya. You can learn more in your profile or at the Help Center.';
  static const mmAccountLimitReachedNonLink =
      'You\'ve reached your account limit with Maya. You can learn more in your profile or at the ';
  static const mmAccountLimitReachedLink = 'Help Center';
  static const mmAccountLimitReachedEnd = '.';
  static const mmExceededDailyAmountLimit =
      'You\'ve reached your transfer limit for today. Please try again tomorrow.';
  static const mmExceededMonthlyAmountLimit =
      'You\'ve reached your transfer limit this month. You can try again next month.';
  static const mmExceededDailyTransactionLimit =
      'You\'ve reached your spending limit for today. Please try again tomorrow.';
  static const mmExceededMonthlyTransactionLimit =
      'You\'ve reached your spending limit this month. You can try again next month.';

  //* Favorites
  static const myFavorites = 'MY FAVORITES';
  static const favoritesListTitle = 'Favorites';
  static const updateFaveSuccess = 'Favorite\'s details have been updated';
  static const updateFaveFailure = 'Favorite\'s details couldn\'t be updated';
  static const allFavoritesTabTitle = 'All';
  static const walletFavoritesTabTitle = 'Maya Wallet';
  static const savingsFavoritesTabTitle = 'Maya Savings';
  static const otherBanksFavoritesTabTitle = 'Other banks';
  static const viewFavorites = 'View favorites';
  static const favoriteNoLongerAvailable = 'This bank is no longer available';
  static const favoriteNoLongerAvailableTitle = 'Bank no longer available';
  static const favoriteNoLongerAvailableSubtitle =
      'Your chosen bank is no longer available on Maya. We recommend removing this listing from your favorites and adding a different bank.';
  static const favoriteNoLongerAvailableBtnPrimary = 'Got it';
  static const favoriteNoLongerAvailableBtnSecondary =
      'Delete favorite account';
  static const favoriteDeleteErrorHeader = 'We couldn\'t remove your favorite.';
  static const favoriteDeleteErrorSubtext =
      'We ran into a connection issue.\nPlease try again in a bit.';
  static const favoriteSnackbarBankNoLongerAvail =
      "The bank on this favorite is no longer available";

  //* Re KYC
  static const reKycNewUserPromptTitle =
      'Update your account and enjoy all of Maya\'s features';
  static const reKycNewUserPromptSubtitle =
      'We\'re only able to unlock these great features for you once you update your account:';
  static const reKycNewUserPromptGetASavingsAccount = 'Get a Savings Account';
  static const reKycNewUserPromptGetCreditFast = 'Get credit fast';
  static const reKycNewUserPromptInvestCrypto = 'Invest in crypto';
  static const reKycNewUserPromptLater = 'I\'ll do it later';
  static const reKycNewUserPromptUpdateNow = 'Update now';
  static const reKycExistingUserPromptDefaultHeader =
      'Update your information to enjoy Savings!';
  static const reKycExistingUserPromptDefaultSubtext =
      'To continue enjoying Savings, we need to make sure your information is up to date! This will only take a few minutes.';
  static const reKycExistingUserPromptUpdateNow = 'Update now';
  static const reKycExistingUserPromptLater = 'I\'ll do it later';

  //* Pesonet Cutoffs
  static const pesonetLearnMoreCutOff =
      'Learn more about PESONet cut-off times';
  static const pesonetCutOffHeader = 'PESONet cut-off times';
  static const pesoNetTxnHeader = 'Transaction time';
  static const pesoNetProcessHeader = 'Processed at';
  static const pesonetTxnTime1 = '12:01 AM - 10:00 AM';
  static const pesonetTxnTime2 = '10:01 AM - 4:00 PM';
  static const pesonetTxnTime3 = '4:01 PM - 12:00 AM';
  static const pesonetTxnTime4 = 'Weekends & holidays';
  static const pesonetProcessTime1 = '10:00 AM same day';
  static const pesonetProcessTime2 = '4:00 PM same day';
  static const pesonetProcessTime3 = '10:00 AM\nnext business day';
  static const pesonetProcessTime4 = '10:00 AM\nnext business day';
  static const pesonetCutOffMap = {
    Strings.pesonetTxnTime1: Strings.pesonetProcessTime1,
    Strings.pesonetTxnTime2: Strings.pesonetProcessTime2,
    Strings.pesonetTxnTime3: Strings.pesonetProcessTime3,
    Strings.pesonetTxnTime4: Strings.pesonetProcessTime4,
  };
  static const maxLimitPerTxn = '₱300,000 limit per transaction';

  //* Transaction History
  static const txnSummarySeeAll = 'See all';
  static const txnHistoryTitle = 'Transactions';
  static const emptyTxnTitle = 'No transactions';
  static const emptyTxnSubtitle =
      'You don’t have any transactions of this type.';
  static const txnLoadMore = 'Load more';
  static const txnBackToTop = 'Back to top ';
  static const txnBackToTopEmoji = '👆';

  //* Bank Cert Visa Form
  static const bankCertVisaFormTitle = "Recipient's details";
  static const bankCertVisaFormHeader = 'Certificate is addressed to:';
  static const bankCertVisaFormRecipientNameLabel =
      "Recipient's name (Optional)";
  static const bankCertVisaFormRecipientNameHint = 'Enter name';
  static const bankCertVisaFormEmbassyNameLabel = 'Company / embassy name';
  static const bankCertVisaFormEmbassyNameHint = 'Enter name';
  static const bankCertVisaFormEmbassyAddressHouseLabel =
      'Recipient\'s Address';
  static const bankCertVisaFormEmbassyAddressHouseHint =
      'e.g. house number, street, village';
  static const bankCertVisaFormBarangayLabel = 'Barangay';
  static const bankCertVisaFormEmbassyBarangayHint = 'Enter barangay';
  static const bankCertVisaFormRegionLabel = 'Region';
  static const bankCertVisaFormRegionHint = 'Select region';
  static const bankCertVisaFormProvinceLabel = 'Province';
  static const bankCertVisaFormProvinceHint = 'Select province';
  static const bankCertVisaFormCityLabel = 'City / Municipality';
  static const bankCertVisaFormCityHint = 'Select city';
  static const bankCertVisaFormZipCodeLabel = 'Zip code';
  static const bankCertVisaFormZipCodeHint = 'Enter zip code';
  static const bankCertVisaFormCountryLabel = 'Country';
  static const bankCertVisaFormCountryHint = 'Enter country';
  static const bankCertVisaFormDefaultCountry = 'Philippines';

  //* KYC Valid ID Bottom Sheet
  static const kycValidIdBottomSheetTitle = 'Let\'s see an ID first';
  static const kycValidIdBottomSheetSubtitleNonLink1 =
      'To access Savings and keep your account updated, please send a copy of your latest valid ID to ';
  static const kycValidIdBottomSheetSubtitleNonLink2 =
      '. We\'ll notify you when it\'s approved! ';
  static const kycValidIdBottomSheetSubtitleNonLink3 = '.';
  static const kycValidIdBottomSheetSubtitleLink = 'See list of valid IDs';
  static const kycValidIdBottomSheetContact = 'Send my ID now';
  static const kycValidIdBottomSheetLater = 'I\'ll do it later';

  //* Open Savings Account First Bottom Sheet
  static const openSavingsAccountFirstTitle = 'Open a Savings account first';
  static const openSavingsAccountFirstSubtitle =
      'To open a Time Deposit Plus or Personal Goals account, you first need a Savings account. Tap below to start.';

  //* Date Picker Bottom Sheet
  static const datePickerBottomSheetTitle = 'Select due date';
  static const datePickerBottomSheetSubTitle =
      'You can set the due date for up to 6 months';
  static const datePickerBottomSheetConfirm = 'Set date';

  //* Goal Completion
  static const goalCompletionTitle = 'Goooal!';
  static const egCompletionTitle = 'Way to go, Money Master!';
  static const egCompletionSubtext =
      'You’ve reached your target amount and took it all the way to the end. Enjoy your earnings!';
  static const egCompletionTitleIncomplete = 'That’s a wrap!';
  static const egCompletionSubtextIncomplete =
      'Congrats on sticking to your end date. Enjoy your earnings!';

  //* Goal Maturity
  static const goalMaturityHeaderSingular = "Goal complete!";
  static const goalMaturityHeaderMultiple = "Goals complete!";
  static const goalMaturitySubtitleSingular =
      'This goal has reached its due date. Its total earnings have been sent to your My Savings account.';
  static const goalMaturitySubtitleMultiple =
      'The following goals have reached their due dates. Their total earnings have been sent to your My Savings account.';

  static const txnChannelCash = '';
  static const txnChannelManualInterest = '';
  static const txnChannelInstapayFeeReversal = 'Instapay fee reversal';
  static const txnChannelUnknownNonDebug = '';

  //* Promo
  static const promoBannerTitle = 'Unlock 6% interest ';
  static const promoBannerTitlePa = 'p.a.';
  static const promoBannerSubtitle = 'All it takes is to pay with Maya';
  static const promoCommonPa = 'p.a.';

  //* Promo List
  static const promoListTitle = 'Your interest';
  static const promoListCurrentRate = 'Currently earning';
  static const promoListRestartInfo =
      'Boosts will reset at the start of every month';
  static const promoListFAQ = 'FAQ';
  static const promoListBonus = 'Bonus';
  static const promoListBase = 'Base';
  static const promoListRestart = 'Restart';
  static const promoListBoostNow = 'Boost now';
  static String promoListUpToInterest(dynamic interest) => 'Up to $interest';

  //* Interest Earned
  static const interestEarnedThisMonthTitle = 'Interest earned this month';

  //* Instapay Error Spiels
  static const instapayErrorRfiTimeoutHeader =
      'We\'re processing your transfer';
  static const instapayErrorRfiTimeoutBody =
      'In case you experience delays, please check with the receiving bank.';
  static const instapayErrorRfiDownHeader = 'This bank will be back soon';
  static const instapayErrorRfiDownBody =
      'Please select a different bank for now and try again.';
  static const instapayErrorRfiRuleRestrictedHeader =
      'That account has been restricted';
  static const instapayErrorRfiRuleRestrictedBody =
      'The recipient\'s bank has prevented them from receiving InstaPay transactions. Please try a different account.';
  static const instapayErrorRfiAccNumNonExistingHeader =
      'That account doesn\'t exist';
  static const instapayErrorRfiAccNumNonExistingBody =
      'Please check the account details you\'re using and try again.';
  static const instapayErrorRfiBlockedDormantInactiveHeader =
      'That account is invalid';
  static const instapayErrorRfiBlockedDormantInactiveBody =
      'The account you\'re sending to appears to be closed, blocked, dormant, or inactive. Please try again with a different account.';
  static const instapayErrorRfiAccountLimitHeader = 'That amount is too high';
  static const instapayErrorRfiAccountLimitBody =
      'This transaction exceeds the receiving account\'s limit. Please try a smaller amount.';
  static const instapayErrorRfiSystemFailureHeader = 'Receiving bank declined';
  static const instapayErrorRfiSystemFailureBody =
      'There was an error caused by the bank you selected. Please try again later or choose a different bank.';
  static const instapayErrorRfiProfileInvalidHeader = 'That account is invalid';
  static const instapayErrorRfiProfileInvalidBody =
      "InstaPay isn't available for dollar accounts, time deposits, trust funds, and other similar accounts. Please try again.";
  static const instapayErrorRfiMayaNotDefinedHeader = 'Receiving bank declined';
  static const instapayErrorRfiMayaNotDefinedBody =
      "The bank you're sending to isn't accepting InstaPay transactions at the moment. Try sending to a different bank.";
  static const instapayErrorRfiMinAmountHeader = 'That amount is too low';
  static const instapayErrorRfiMinAmountBody =
      "This transaction doesn't meet the receiving bank's minimum requirement. Please try a higher amount.";
  static const instapayErrorRfiDateValidaitonHeader = 'Receiving bank declined';
  static const instapayErrorRfiDateValidaitonBody =
      "There was an error caused by the bank you selected. Please try again later or try a different bank.";
  static const instapayErrorRfiUndefinedByMayaHeader =
      "Couldn't complete transfer";
  static const instapayErrorRfiUndefinedByMayaBody =
      'Please try a different bank for now.';
  static const instapayErrorMayaSentDuplicateTxnHeader =
      "Couldn't complete transfer";
  static const instapayErrorMayaSentDuplicateTxnBody =
      'We ran into an error while processing your InstaPay transfer. Please try again in a few minutes.';
  static const instapayErrorMayaBadRequestHeader = "Couldn't complete transfer";
  static const instapayErrorMayaBadRequestBody =
      'We ran into an error while processing your InstaPay transfer. Please try again in a few minutes.';
  static const instapayErrorMayaAmtLimitHeader = "Couldn't complete transfer";
  static const instapayErrorMayaAmtLimitBody =
      "We couldn't complete your InstaPay transfer. Please try again in a few minutes.";
  static const instapayErrorMayaNotFundedHeader = "Couldn't complete transfer";
  static const instapayErrorMayaNotFundedBody =
      'Please try an InstaPay transfer again in a few minutes.';

  //* ===============
}