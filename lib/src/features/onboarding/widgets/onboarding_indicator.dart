part of '../onboarding_page.dart';

class OnboardingIndicator extends StatelessWidget {
  final int steps, currentIndex;

  const OnboardingIndicator({super.key, required this.steps, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraint) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              steps,
              (index) => Container(
                height: 2,
                width: constraint.maxWidth / steps,
                color: index <= currentIndex 
                  ? CustomColors.primaryBlackColor
                  : CustomColors.primaryWhiteColor,
              ),
            ),
          );
        }
      ),
    );
  }
}