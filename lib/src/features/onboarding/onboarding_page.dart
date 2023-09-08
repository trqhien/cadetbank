import 'package:cadetbank/src/core/styling/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'widgets/onboarding_step.dart';
part 'widgets/onboarding_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key, required this.title}) : super(key: key);

  final String title;                                                                                                                                                                                                                                                                                                                                                             

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  int _currentIndex = 0;

  final List<_OnboardingData> _onboardingData = [
    _OnboardingData(
      image: "assets/images/UpgradeGreen.png",
      description: "Send money and get paid from aboard", 
    ),
    _OnboardingData(
      image: "assets/images/Cards_ver1.png",
      description: "Pay your way worldwide with a universal card",
    ),
    _OnboardingData(
      image: "assets/images/Crypto.png",
      description: "It's your money. Boost it with assets",
    ),
    _OnboardingData(
      image: "assets/images/Face.png",
      description: "Disappoint thieves",
    ),
    _OnboardingData(
      image: "assets/images/MayaInvite.png",
      description: "One account for all the money in the world",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onChangedFunction(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void nextFunction() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300), 
      curve: Curves.ease
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        maintainBottomViewPadding: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: PageView(
                controller: _pageController,
                onPageChanged: _onChangedFunction,
                children: _onboardingData.asMap().entries.map(
                  (d) => OnboardingStep(
                    imageName: d.value.image,
                    description: d.value.description,
                    isLastStep: d.key == _onboardingData.length - 1,
                    onNext: nextFunction
                  )
                ).toList()
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: OnboardingIndicator(currentIndex: _currentIndex, steps: _onboardingData.length),
            ),
          ],
        )
      ),
    );
  }
}

class _OnboardingData {
  final String image;
  final String description;

  _OnboardingData({required this.image, required this.description});
}
