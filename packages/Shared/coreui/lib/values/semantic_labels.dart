// coverage:ignore-file
class SemanticLabels {
  const SemanticLabels._();

  //* Common
  static const screenCommonBackButton = 'ScreenCommonBackButton';
  static const screenCommonTitle = 'ScreenCommonTitle';
  static const commonFundAccountTileTitle = 'CommonFundAccountTileTitle';
  static const commonFundAccountTileName = 'CommonFundAccountTileName';
  static const commonFundAccountTileBalance = 'CommonFundAccountTileBalance';
  static const commonFundAccountTileNumber = 'CommonFundAccountTileNumber';
  static const commonFavoritePickerTitle = 'CommonFavoritePickerTitle';
  static const commonFavoriteCard = 'CommonFavoriteCard';
  static const commonFavoriteCardName = 'CommonFavoriteName';
  static const commonFavoriteCardRecipient = 'CommonFavoriteRecipient';
  static const commonFavoriteCardAccNum = 'CommonFavoriteAccountNumber';
  static const commonFavoriteCardBank = 'CommonFavoriteBankName';
  static const commonFavoriteError = 'CommonFavoriteError';
  static const commonTransferConfirmationDisclaimer =
      'CommonTransferConfirmationDisclaimer';
  static const commonCellLabel = 'CommonCellLabel';
  static const commonCellContent = 'CommonCellContent';
  static const commonTextFieldErrorIcon = 'ErrorIcon';
  static const commonTextFieldInfoIcon = 'InfoIcon';
  static const commonTextFieldCheveronDownIcon = 'CheveronDownIcon';
  static const commonTextFieldBorder = 'Border';
  static const commonTextFieldLabel = 'Label';
  static const commonTextFieldSubtext = 'Subtext';
  static const commonTextFieldValidationMsg = 'ValidationMessage';
  static const commonTextFieldHint = 'Hint';
  static const commonTextFieldInfo = 'Info';
  static const commonSelectInfoTitle = 'Title';
  static const commonSelectInfoSubtitle = 'Subtitle';
  static const commonSelectInfoIcon = 'Icon';
  static const commonChevronTileTitle = 'Title';
  static const commonChevronTileSubtitle = 'Subtitle';
  static const commonChevronTileChevronIcon = 'ChevronIcon';
  static const commonChevronTileIcon = 'Icon';
  static const commonRadioIcon = 'CommonRadioIcon';
  static const commonMoodPicker = 'CommonMoodPicker';
  static const commonMoodBox = 'MoodBox';
  static const commonMoodIcon = 'MoodIcon';
  static const commonMoodCheckIcon = 'MoodCheckIcon';
  static const commonTransaction = 'CommonTransaction';
  static const commonTxnTitle = 'Title';
  static const commonTxnLoadMore = 'LoadMoreButton';
  static const commonBox = 'Box';
  static const commonLabel = 'Label';
  static const commonAmount = 'Amount';
  static const commonSubtext = 'Subtext';
  static const commonLogo = 'Logo';

  //* Savings Tab
  static const savingsTabCreateSavingsCard = 'SavingsTabCreateSavingsCard';
  static const savingsTabSavingsInfoCard = 'SavingsTabSavingsInfoCard';
  static const savingsTabSavingsInfoCardInterest =
      '$savingsTabSavingsInfoCard-Interest';
  static const savingsTabSavingsCardBalance =
      '$savingsTabSavingsInfoCard-Balance';
  static const savingsTabSavingsCardPromo =
      '$savingsTabSavingsInfoCard-PromoSpiel';
  static const savingsTabCreateGoalCard = 'SavingsTabCreateGoalCard';
  static const savingsTabAddGoalAccountLinkText =
      'SavingsTabAddGoalAccountLinkText';
  static const savingsTabGoalInfoTile = 'SavingsTabGoalInfoTile';
  static const savingsTabHideIcon = 'SavingsTabHideIcon';
  static const savingsTabDepositButton = 'SavingsTabDepositButton';
  static const savingsTabTransferButton = 'SavingsTabTransferButton';
  static const savingsTabQualifiedPromoBanner =
      'SavingsTabQualifiedPromoBanner';
  static const savingsTabUnqualifiedPromoBanner =
      'SavingsTabUnqualifiedPromoBanner';
  static const savingsTabGoalInfoText = 'SavingsTabGoalInfoText';
  static const savingsTabSubheaderEg = 'SavingsTabSubheaderExtendedGoals';
  static const savingsTabSubheaderPg = 'SavingsTabSubheaderPersonalGoals';
  static const savingsTabCreateCard = 'SavingsTabCreateCard';
  static const savingsTabCreateCardIcon = 'SavingsTabCreateCardIcon';
  static const savingsTabCreateCardHeader = 'SavingsTabCreateCardHeader';
  static const savingsTabCreateCardSubtext = 'SavingsTabCreateCardSubtext';
  static const savingsTabCreateCardCta = 'SavingsTabCreateCardCta';
  static const savingsTabGoalTileName = '$savingsTabGoalInfoTile-Name';
  static const savingsTabGoalTileBalance = '$savingsTabGoalInfoTile-Balance';

  //* Savings Dashboard
  static const savingsDashboardAccountBalance =
      'SavingsDashboardAccountBalance';
  static const savingsDashboardAccountName = 'SavingsDashboardAccountName';
  static const savingsDashboardAccountNumber = 'SavingsDashboardAccountNumber';
  static const savingsDashboardDepositButton = 'SavingsDashboardDepositButton';
  static const savingsDashboardTransferButton =
      'SavingsDashboardTransferButton';

  //* Transfer Destination
  static const transferDestinationHeader = 'TransferDestinationHeader';
  static const transferDestinationToMyAccounts = 'TransferDestinationToMyAccounts';
  static const transferDestinationToMyWalletType =
      'TransferDestinationToMyWalletType';
  static const transferDestinationToPersonalGoalsType =
      'TransferDestinationToPersonalGoalsType';
  static const transferDestinationToOtherWalletType =
      'TransferDestinationToOtherWalletType';
  static const transferDestinationToOtherSavingsType =
      'TransferDestinationToOtherSavingsType';
  static const transferDestinationToOtherBankType =
      'TransferDestinationToOtherBankType';

  //* Transfer to Wallet
  static const transferToWalletAmountField = 'TransferToWalletAmountField';
  static const transferToWalletContinueButton =
      'TransferToWalletContinueButton';
  static const transferToWalletConfirmationHeader =
      'TransferToWalletConfirmationHeader';
  static const transferToWalletConfirmationAmount =
      'TransferToWalletConfirmationAmount';
  static const transferToWalletConfirmationSourceAccount =
      'TransferToWalletConfirmationSourceAccount';
  static const transferToWalletConfirmationDestinationAccount =
      'TransferToWalletConfirmationDestinationAccount';
  static const transferToWalletConfirmationTransferButton =
      'TransferToWalletConfirmTransferButton';

  //* Interemediate Receipt Bottom Sheet
  static const receiptBottomSheetImage = 'ReceiptBottomSheetImage';
  static const receiptBottomSheetTitle = 'ReceiptBottomSheetTitle';
  static const receiptBottomSheetSubtitle = 'ReceiptBottomSheetSubtitle';
  static const receiptBottomSheetViewReceiptButton =
      'ReceiptBottomSheetViewReceiptButton';
  static const receiptBottomSheetFinishButton =
      'ReceiptBottomSheetFinishButton';

  //* Personal Goal Form
  static const pgFormHeader = 'PersonalGoalsFormHeader';
  static const pgFormNameField = 'PersonalGoalsFormNameField';
  static const pgFormAmountField = 'PersonalGoalsFormAmountField';
  static const pgFormDateField = 'PersonalGoalsFormDateField';
  static const pgFormContinueButton = 'PersonalGoalsFormContinueButton';

  //* Goal Type Card
  static const goalTypeCard = 'GoalTypeCard';
  static const goalAccountTypeCardEmoji = 'GoalTypeCardEmoji';
  static const goalAccountTypeCardTitle = 'GoalTypeCardTitle';
  static const goalAccountTypeCardBody = 'GoalTypeCardBody';
  static const goalAccountTypeCardInterestRate = 'GoalTypeCardInterestRate';

  //* Goal Type Selection
  static const goalTypeSelectionHeader = 'GoalTypeSelectionHeader';
  static const goalTypeSelectionSubtexts = 'GoalTypeSelectionSubtexts';
  static const goalTypeSelectionExtendedGoalTitle =
      'GoalTypeSelectionExtendedGoalTitle';
  static const goalTypeSelectionExtendedGoalDetails =
      'GoalTypeSelectionExtendedGoalDetails';
  static const goalTypeSelectionPersonalGoalTitle =
      'GoalTypeSelectionPersonalGoalTitle';
  static const goalTypeSelectionPersonalGoalDetails =
      'GoalTypeSelectionPersonalGoalDetails';

  //* Extended Goal Form
  static const egFormHeader = 'ExtendedGoalsFormHeader';
  static const egFormInfoCard = 'ExtendedGoalsFormInfoCard';
  static const egFormNameField = 'ExtendedGoalsFormNameField';
  static const egFormAmountField = 'ExtendedGoalsFormAmountField';
  static const egFormDateField = 'ExtendedGoalsFormDateField';
  static const egFormContinueButton = 'ExtendedGoalsFormContinueButton';

  //* Goal Transfer Selection
  static const goalTransferSelectionHeader = 'GoalTransferSelectionHeader';
  static const goalTransferOwnAccountCard = 'GoalTransferOwnAccountCard';

  //* Goals Transfer Amount
  static const goalsTransferAmountHeader = 'GoalsTransferAmountHeader';
  static const goalsTransferAmountFromCard = 'GoalsTransferAmountFromCard';
  static const goalsTransferAmountToCard = 'GoalsTransferAmountToCard';
  static const goalsTransferAmountFromToTitle = 'Title';
  static const goalsTransferAmountFromToEmoji = 'Emoji';
  static const goalsTransferAmountFromToAccName = 'AccountName';
  static const goalsTransferAmountFromToAccNum = 'AccountNumber';
  static const goalsTransferAmountFromToBalance = 'Balance';
  static const goalsTransferAmountTextField = 'GoalsTransferAmountTextField';
  static const goalsTransferAmountContinueBtn =
      'GoalsTransferAmountContinueButton';

  //* Goal Transfer Confirmation
  static const goalTransferConfirmationHeader =
      'GoalTransferConfirmationHeader';
  static const goalTransferConfirmationTransferAmt =
      'GoalTransferConfirmationTransferAmount';
  static const goalTransferConfirmationSourceAccount =
      'GoalTransferConfirmationSourceAccount';
  static const goalTransferConfirmationDestinationAccount =
      'GoalTransferConfirmationDestinationAccount';
  static const goalTransferConfirmationTransferBtn =
      'GoalTransferConfirmationTransferButton';

  //* Goal Completion Bottom Sheet
  static const goalCompletionBottomSheetImg = 'GoalCompletionBottomSheetImage';
  static const goalCompletionBottomSheetTitle =
      'GoalCompletionBottomSheetTitle';
  static const goalCompletionBottomSheetSubtitle =
      'GoalCompletionBottomSheetSubtitle';
  static const goalCompletionBottomSheetDisclaimer =
      'GoalCompletionBottomSheetDisclaimer';
  static const goalCompletionBottomSheetBtn = 'GoalCompletionBottomSheetButton';

  //* Goal Maturity Bottom Sheet
  static const goalMaturityBottomSheetBtn = 'GoalMaturityBottomSheetButton';

  //* Goal Completion Bottom Sheet
  static const openSavingsAccountFirstBottomSheetImg =
      'OpenSavingsAccountFirstBottomSheetImg';
  static const openSavingsAccountFirstBottomSheetTitle =
      'OpenSavingsAccountFirstBottomSheetTitle';
  static const openSavingsAccountFirstBottomSheetSubtitle =
      'OpenSavingsAccountFirstBottomSheetSubtitle';
  static const openSavingsAccountFirstBottomSheetMaybeLater =
      'OpenSavingsAccountFirstBottomSheetMaybeLater';
  static const openSavingsAccountFirstBottomSheetContinue =
      'OpenSavingsAccountFirstBottomSheetContinue';

  //* Goal Dashboard
  static const goalDashboardEmoji = 'GoalDashboardEmoji';
  static const goalDashboardGoalName = 'GoalDashboardGoalName';
  static const goalDashboardDepositBtn = 'GoalDashboardDepositBtn';
  static const goalDashboardAccountBalance = 'GoalDashboardAccountBalance';
  static const goalDashboardAccountNumber = 'GoalDashboardAccountNumber';

  //* Another Wallet Transfer Details
  static const anotherWalletTransferDetailsHeader =
      'AnotherWalletTransferDetailsHeader';
  static const anotherWalletTransferDetailsMobileField =
      'AnotherWalletTransferDetailsMobileField';
  static const anotherWalletTransferDetailsAmtField =
      'AnotherWalletTransferDetailsAmtField';
  static const anotherWalletTransferDetailsNoteField =
      'AnotherWalletTransferDetailsNoteField';
  static const anotherWalletTransferDetailsContinueBtn =
      'AnotherWalletTransferDetailsContinueButton';

  //* Another Account Transfer Details
  static const anotherAccountTransferHeader = 'AnotherAccountTransferHeader';
  static const anotherAccountTransferContinueBtn =
      'AnotherAccountTransferContinueButton';

  //* Another Account Confirmation
  static const anotherAccountConfirmationHeader =
      'AnotherAccountConfirmationHeader';
  static const anotherAccountConfirmationAmt =
      'AnotherAccountConfirmationAmount';
  static const anotherAccountConfirmationSource =
      'AnotherAccountConfirmationSource';
  static const anotherAccountConfirmationDestination =
      'AnotherAccountConfirmationDestination';
  static const anotherAccountConfirmationNote =
      'AnotherAccountConfirmationNote';
  static const anotherAccountConfirmationTransferBtn =
      'AnotherAccountConfirmationTransferButton';

  //* Bank Transfer Form
  static const bankTransferFormBankName = 'BankTransferFormBankName';
  static const bankTransferFormAccountNameField =
      'BankTransferFormAccountNameField';
  static const bankTransferFormAccountNumberField =
      'BankTransferFormAccountNumberField';
  static const bankTransferFormAmountField = 'BankTransferFormAmountField';
  static const bankTransferFormNotesField = 'BankTransferFormNotesField';

  //* Other Bank Picker
  static const otherBankPickerHeader = 'OtherBankPickerHeader';
  static const otherBankPickerSearchBar = 'OtherBankPickerSearchBar';
  static const otherBankPickerSearchIcon = 'OtherBankPickerSearchIcon';
  static const otherBankPickerSearchTextField =
      'OtherBankPickerSearchTextField';
  static const otherBankPickerEmptyText = 'OtherBankPickerEmptyText';
  static const otherBankPickerAllBanks = 'OtherBankPickerAllBanks';
  static const otherBankPickerBankItem = 'OtherBankPickerBankItem';

  //* Other Bank Transfer Details
  static const otherBankTransferHeader = 'OtherBankTransferHeader';
  static const otherBankTransferPesonetLink = 'OtherBankTransferPesonetLink';
  static const otherBankTransferChannelBox = 'OtherBankTransferChannelBox';
  static const otherBankTransferPesonet = 'Pesonet';
  static const otherBankTransferInstapay = 'Instapay';
  static const otherBankTransferChannelTitle = 'ChannelTitle';
  static const otherBankTransferChannelLogo = 'ChannelLogo';
  static const otherBankTransferChannelDetails = 'ChannelDetails';
  static const otherBankTransferContinueBtn = 'OtherBankTransferContinueButton';

  //* Other Bank Confirmation
  static const otherBankConfirmationHeader = 'OtherBankConfirmationHeader';
  static const otherBankConfirmationAmt = 'OtherBankConfirmationAmount';
  static const otherBankConfirmationSource = 'OtherBankConfirmationSource';
  static const otherBankConfirmationDestination =
      'OtherBankConfirmationDestination';
  static const otherBankConfirmationTransferFee =
      'OtherBankConfirmationTransferFee';
  static const otherBankConfirmationGateway = 'OtherBankConfirmationGateway';
  static const otherBankConfirmationNotes = 'OtherBankConfirmationNotes';
  static const otherBankConfirmationTransferBtn =
      'OtherBankConfirmationTransferButton';

  //* Date Picker Bottom Sheet
  static const datePickerCalendar = 'DatePickerCalendar';
  static const datePickerCancelBtn = 'DatePickerCancelBtn';
  static const datePickerSetDateBtn = 'DatePickerSetDateBtn';

  //* Extended Goal Creation Confirmation Screen
  static const extendedGoalCreationConfirmationHeader =
      'ExtendedGoalCreationConfirmationHeader';
  static const extendedGoalCreationConfirmationSubheader =
      'ExtendedGoalCreationConfirmationSubheader';
  static const extendedGoalCreationConfirmationGoalName =
      'ExtendedGoalCreationConfirmationGoalName';
  static const extendedGoalCreationConfirmationTargetAmount =
      'ExtendedGoalCreationConfirmationTargetAmount';
  static const extendedGoalCreationConfirmationEndDate =
      'ExtendedGoalCreationConfirmationEndDate';
  static const extendedGoalCreationConfirmationLabelColumn =
      'ExtendedGoalCreationConfirmationLabelColumn';
  static const extendedGoalCreationConfirmationValueColumn =
      'ExtendedGoalCreationConfirmationValueColumn';
  static const extendedGoalCreationConfirmationBaseInterestLabel =
      'ExtendedGoalCreationConfirmationBaseInterestLabel';
  static const extendedGoalCreationConfirmationBaseInterestValue =
      'ExtendedGoalCreationConfirmationBaseInterestValue';
  static const extendedGoalCreationConfirmationBoosterInterestLabel =
      'ExtendedGoalCreationConfirmationBoosterInterestLabel';
  static const extendedGoalCreationConfirmationBoosterInterestSublabel =
      'ExtendedGoalCreationConfirmationBoosterInterestSublabel';
  static const extendedGoalCreationConfirmationBoosterInterestValue =
      'ExtendedGoalCreationConfirmationBoosterInterestValue';
  static const extendedGoalCreationConfirmationBoosterInfoText =
      'ExtendedGoalCreationConfirmationBoosterInfoText';
  static const extendedGoalCreationConfirmationBoosterInfoTextDetail1 =
      'ExtendedGoalCreationConfirmationBoosterInfoTextDetail1';
  static const extendedGoalCreationConfirmationBoosterInfoTextDetail2Part1 =
      'ExtendedGoalCreationConfirmationBoosterInfoTextDetail2Part1';
  static const extendedGoalCreationConfirmationBoosterInfoTextDetail2Part2 =
      'ExtendedGoalCreationConfirmationBoosterInfoTextDetail2Part2';
  static const extendedGoalCreationConfirmationBoosterInfoTextDetail2Terms =
      'ExtendedGoalCreationConfirmationBoosterInfoTextDetail2Terms';
  static const extendedGoalCreationConfirmationBoosterInfoTextDetail2Privacy =
      'ExtendedGoalCreationConfirmationBoosterInfoTextDetail2Privacy';
  static const extendedGoalCreationConfirmationBoosterConfirmBtn =
      'ExtendedGoalCreationConfirmationBoosterConfirmBtn';

  //* Extended Goal Creation Success Screen
  static const extendedGoalCreationSuccessHeader =
      'ExtendedGoalCreationSuccessHeader';
  static const extendedGoalCreationSuccessDoneBtn =
      'ExtendedGoalCreationSuccessDoneBtn';
  static const extendedGoalCreationSuccessDepositNowBtn =
      'ExtendedGoalCreationSuccessDepositNowBtn';
  static const extendedGoalCreationSuccessDisclaimer =
      'ExtendedGoalCreationSuccessDisclaimer';
  static const extendedGoalCreationSuccessGoalNameLabel =
      'ExtendedGoalCreationSuccessGoalNameLabel';
  static const extendedGoalCreationSuccessGoalNameValue =
      'ExtendedGoalCreationSuccessGoalNameValue';
  static const extendedGoalCreationSuccessEndDateLabel =
      'ExtendedGoalCreationSuccessEndDateLabel';
  static const extendedGoalCreationSuccessEndDateValue =
      'ExtendedGoalCreationSuccessEndDateValue';
  static const extendedGoalCreationSuccessTargetAmountLabel =
      'ExtendedGoalCreationSuccessTargetAmountLabel';
  static const extendedGoalCreationSuccessTargetAmountValue =
      'ExtendedGoalCreationSuccessTargetAmountValue';
  static const extendedGoalCreationSuccessAccountNumberLabel =
      'ExtendedGoalCreationSuccessAccountNumberLabel';
  static const extendedGoalCreationSuccessAccountNumberValue =
      'ExtendedGoalCreationSuccessAccountNumberValue';

  //* Extended Goal Dashboard Screen
  static const egDashboardGoalName = 'EGDashboardGoalName';
  static const egDashboardGoalAccNum = 'EGDashboardGoalAccountNumber';
  static const egDashboardGoalBalance = 'EGDashboardGoalBalance';
  static const egDashboardPieChart = 'EGDashboardPieChart';
  static const egDashboardPieChartDaysCount = '$egDashboardPieChart-Days';
  static const egDashboardProgressBar = 'EGDashboardProgressBar';
  static const egDashboardProgressBarText = '$egDashboardProgressBar-Text';
  static const egDashboardDepositBtn = 'EGDashboardDepositButton';
  static const egDashboardInterestEarning = 'EGDashboardInterestEarning';
  static const egDashboardAccDetBtn = 'EGDashboardAccountDetails';
  static const egDashboardInterestHeader = 'EGDashboardInterestHeader';
  static const egDashboardInterestBase = 'EGDashboardInterestBase';
  static const egDashboardInterestBoost = 'EGDashboardInterestBooster';

  //* Extended Goal Dashboard Progress Bar
  static const egDashboardProgressBarDescription =
      'EGDashboardProgressBarDescription';
  static const egDashboardProgressBarMarkerIcon =
      'EGDashboardProgressBarMarkerIcon';
  static const egDashboardProgressBarBadge = 'EGDashboardProgressBarBadgeIcon';
  static const egDashboardProgressBarName = 'EGDashboardProgressBarBadgeName';
  static const egDashboardProgressBarProgressIndicator =
      'EGDashboardProgressBarProgressIndicator';

  //* Extended Goal Badge Information Bottom Sheet
  static const extendedGoalBadgeInfoBottomSheetImage =
      'ExtendedGoalBadgeInfoBottomSheetImage';
  static const extendedGoalBadgeInfoBottomSheetLabel =
      'ExtendedGoalBadgeInfoBottomSheetLabel';
  static const extendedGoalBadgeInfoBottomSheetTitle =
      'ExtendedGoalBadgeInfoBottomSheetTitle';
  static const extendedGoalBadgeInfoBottomSheetDescription =
      'ExtendedGoalBadgeInfoBottomSheetDescription';
  static const extendedGoalBadgeInfoBottomSheetButton =
      'ExtendedGoalBadgeInfoBottomSheetButton';

  //* Extended Goal How To Get Badge Bottom Sheet
  static const extendedGoalBadgeHowToBottomSheetTitle =
      'ExtendedGoalBadgeHowToBottomSheetTitle';
  static const extendedGoalBadgeHowToBottomSheetBadge =
      'ExtendedGoalBadgeHowToBottomSheetBadge';
  static const extendedGoalBadgeHowToBottomSheetButton =
      'ExtendedGoalBadgeHowToBottomSheetButton';

  //* Extended Goal Badge Step
  static const extendedGoalBadgeStepIcon = 'ExtendedGoalBadgeStepIcon';
  static const extendedGoalBadgeStepName = 'ExtendedGoalBadgeStepName';
  static const extendedGoalBadgeStepDescription =
      'ExtendedGoalBadgeStepDescription';

  //* Extended Goal Completion Bottom Sheet
  static const extendedGoalCompletionBottomSheetImage =
      'ExtendedGoalCompletionBottomSheetImage';
  static const extendedGoalCompletionBottomSheetTitle =
      'ExtendedGoalCompletionBottomSheetTitle';
  static const extendedGoalCompletionBottomSheetSubtitle =
      'ExtendedGoalCompletionBottomSheetSubtitle';
  static const extendedGoalCompletionBottomSheetDisclaimer =
      'ExtendedGoalCompletionBottomSheetDisclaimer';
  static const extendedGoalCompletionBottomSheetButton =
      'ExtendedGoalCompletionBottomSheetButton';

  //* Account Details Screen
  static const accountDetailsScreenTitle = 'AccountDetailsScreenTitle';
  static const accountDetailsScreenSubTitle = 'AccountDetailsScreenSubTitle';
  static const accountDetailsScreenAccountNameLabel =
      'AccountDetailsScreenAccountNameLabel';
  static const accountDetailsScreenAccountNameInfo =
      'AccountDetailsScreenAccountNameInfo';
  static const accountDetailsScreenAccountTypeLabel =
      'AccountDetailsScreenAccountTypeLabel';
  static const accountDetailsScreenAccountTypeInfo =
      'AccountDetailsScreenAccountTypeInfo';
  static const accountDetailsScreenDateLabel = 'AccountDetailsScreenDateLabel';
  static const accountDetailsScreenDateInfo = 'AccountDetailsScreenDateInfo';
  static const accountDetailsScreenBaseInterestLabel =
      'AccountDetailsScreenBaseInterestLabel';
  static const accountDetailsScreenBaseInterestInfo =
      'AccountDetailsScreenBaseInterestInfo';
  static const accountDetailsScreenBaseInterestSubInfo =
      'AccountDetailsScreenBaseInterestSubInfo';
  static const accountDetailsScreenBaseInterestTextLink =
      'AccountDetailsScreenBaseInterestTextLink';
  static const accountDetailsScreenBoosterInterestLabel =
      'AccountDetailsScreenBoosterInterestLabel';
  static const accountDetailsScreenBoosterInterestInfo =
      'AccountDetailsScreenBoosterInterestInfo';
  static const accountDetailsScreenBoosterInterestSubInfo =
      'AccountDetailsScreenBoosterInterestSubInfo';
  static const accountDetailsScreenBankCertSectionHeader =
      'AccountDetailsScreenBankCertSectionHeader';
  static const accountDetailsScreenBankCertSection =
      'AccountDetailsScreenBankCertSection';
  static const accountDetailsScreenMoreActionsSectionHeader =
      'AccountDetailsScreenMoreActionsSectionHeader';
  static const accountDetailsScreenMoreActionsSection =
      'AccountDetailsScreenMoreActionsSection';
  static const accountDetailsScreenMoreActionsCancelButton =
      'AccountDetailsScreenMoreActionsSectionCancelButton';

  //* Bank Certificate Info Card
  static const bankCertificateInfoCardTitle = 'Title';
  static const bankCertificateInfoCardSubtitle = 'Subtitle';
  static const bankCertificateInfoCardDownloadButton = 'DownloadButton';
  static const bankCertificateInfoCardEmbassyName = 'EmbassyName';
  static const bankCertificateInfoCardAddress = 'Address';

  //* Loading Action Button List
  static const loadingActionButtonListIcon = 'Icon';
  static const loadingActionButtonListTitle = 'Title';
  static const loadingActionButtonListSubtitle = 'Subtitle';
  static const loadingActionButtonListActionIcon = 'ActionIcon';

  //* Extended Goal Cancellation Confirm
  static const extendedGoalCancelationConfirmHeader =
      'ExtendedGoalCancelationConfirmHeader';
  static const extendedGoalCancelationConfirmBody =
      'ExtendedGoalCancelationConfirmBody';
  static const extendedGoalCancelationConfirmTerms =
      'ExtendedGoalCancelationConfirmTerms';
  static const extendedGoalCancelationConfirmTableRunningBalanceLabel =
      'ExtendedGoalCancelationConfirmTableRunningBalanceLabel';
  static const extendedGoalCancelationConfirmTableRunningBalanceInfo =
      'ExtendedGoalCancelationConfirmTableRunningBalanceInfo';
  static const extendedGoalCancelationConfirmTableDSTFeeLabel =
      'ExtendedGoalCancelationConfirmTableDSTFeeLabel';
  static const extendedGoalCancelationConfirmTableDSTFeeInfo =
      'ExtendedGoalCancelationConfirmTableDSTFeeInfo';
  static const extendedGoalCancelationConfirmTableCancelFeeLabel =
      'ExtendedGoalCancelationConfirmTableCancelFeeLabel';
  static const extendedGoalCancelationConfirmTableCancelFeeInfo =
      'ExtendedGoalCancelationConfirmTableCancelFeeInfo';
  static const extendedGoalCancelationConfirmTableTotalLabel =
      'ExtendedGoalCancelationConfirmTableTotalLabel';
  static const extendedGoalCancelationConfirmTableTotalInfo =
      'ExtendedGoalCancelationConfirmTableTotalInfo';
  static const extendedGoalCancelationConfirmCancelBtn =
      'ExtendedGoalCancelationConfirmCancelBtn';
  static const extendedGoalCancelationConfirmBackBtn =
      'ExtendedGoalCancelationConfirmBackBtn';

  //* Extended Goal Cancellation Success
  static const extendedGoalCancelationSuccessHeader =
      'ExtendedGoalCancelationSuccessHeader';
  static const extendedGoalCancelationSuccessDetails =
      'ExtendedGoalCancelationSuccessDetails';
  static const extendedGoalCancelationSuccessDisclaimer =
      'ExtendedGoalCancelationSuccessDisclaimer';

  //* Transaction History
  static const txnHistoryItem = 'TransactionHistoryItem';

  //* Bank Cert Visa Form
  static const bankCertVisaFormAddressHouse = 'BankCertVisaFormAddressHouse';
  static const bankCertVisaFormBarangay = 'BankCertVisaFormBarangay';
  static const bankCertVisaFormCountry = 'BankCertVisaFormCountry';
  static const bankCertVisaFormEmbassy = 'BankCertVisaFormEmbassy';
  static const bankCertVisaFormRecipient = 'BankCertVisaFormRecipient';
  static const bankCertVisaFormZipCode = 'BankCertVisaFormZipCode';
  static const bankCertVisaFormHeader = 'BankCertVisaFormHeader';
  static const bankCertVisaFormContinueBtn = 'BankCertVisaFormContinueBtn';

  //* Relatives Declaration
  static const relativeDeclarationRelativeNumber =
      'RelativeDeclarationRelativeNumber';
  static const relativeDeclarationCloseBtn = 'RelativeDeclarationCloseBtn';
  static const relativeDeclarationTextFormField =
      'RelativeDeclarationTextFormField';
  static const relativeDeclarationRelationshipDropdown =
      'RelativeDeclarationRelationshipDropdown';

  //* Start Account Consanguinity
  static const startAccountConsanguinityScreenTitle =
      'StartAccountConsanguinityScreenTitle';
  static const startAccountConsanguinityScreenSubtitle =
      'StartAccountConsanguinityScreenSubtitle';
  static const startAccountConsanguinityScreenLearnMoreBtn =
      'StartAccountConsanguinityScreenLearnMoreBtn';
  static const startAccountConsanguinityScreenYesBtn =
      'StartAccountConsanguinityScreenYesBtn';
  static const startAccountConsanguinityScreenNoBtn =
      'StartAccountConsanguinityScreenNoBtn';
  static const startAccountConsanguinityScreenRelativeDeclaration =
      'StartAccountConsanguinityScreenRelativeDeclaration';
  static const startAccountConsanguinityScreenAddRelativeBtn =
      'StartAccountConsanguinityScreenAddRelativeBtn';
  static const startAccountConsanguinityScreenEmploymentCheckbox =
      'StartAccountConsanguinityScreenEmploymentCheckbox';
  static const startAccountConsanguinityScreenContinueBtn =
      'StartAccountConsanguinityScreenContinueBtn';
}
