import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/data/common/enums/blocked_state_type.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/strings.dart';
import 'package:restricted_login_flow/src/presentation/common/widgets/rounded_card.dart';
import 'package:restricted_login_flow/src/presentation/common/widgets/rounded_text_button.dart';
import 'package:restricted_login_flow/src/resources/resources.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentBanner extends StatelessWidget {
  final BlockedStateType blockedState;

  const ContentBanner({
    super.key,
    required this.blockedState,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            blockedState.iconPath,
            width: Dimens.imageSize120,
            height: Dimens.imageSize120,
            fit: BoxFit.fill,
            package: Strings.packageName,
          ),
          const SizedBox(height: Dimens.spacing8),
          Text(
            blockedState.titleContent,
            style: Theme.of(context).h5,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Dimens.spacing8),
          Text(
            blockedState.bodyContent,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .cerebriSansPro
                .fontSize14!
                .normal
                .grey6Color
                .textHeight(1.8),
          ),
          const SizedBox(height: Dimens.spacing16),
          if (blockedState.primaryButtonTitle != null)
            Column(
              children: [
                RoundedTextButton(
                  style: CustomButtonStyle.greenMedium,
                  onPressed: () {
                    launchUrl(
                      Uri(
                        scheme: Strings.uriSchemeMailTo,
                        path: Strings.messageUsEmail,
                      ),
                    );
                  },
                  child: Text(blockedState.primaryButtonTitle!),
                ),
                const SizedBox(height: Dimens.spacing8),
              ],
            ),
          RoundedTextButton(
            style: CustomButtonStyle.lightGreenMedium,
            onPressed: () async {
              try {
                final uri = Uri.parse(Strings.helpCenterLink);
                await launchUrl(uri, mode: LaunchMode.inAppWebView);
              } on Exception catch (e) {
                throw Exception('Launching URL failed: $e');
              }
            },
            child: const Text(Strings.buttonLabelGoToHelpCenter),
          )
        ],
      ),
    );
  }
}
