import 'package:cadetbank/src/features/app/cadet_bank_app.dart';
import 'package:flutter/material.dart';

class _OnboardingData {
  final String image;
  final String description;

  _OnboardingData({required this.image, required this.description});
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key, required this.title}) : super(key: key);

  final String title;                                                                                                                                                                                                                                                                                                                                                             

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  int currentIndex = 0;

  final List<_OnboardingData> _onboardingData = [
    _OnboardingData(
      image: "assets/images/Cards_ver1.png",
      description: "Send money and get paid from aboard", 
    ),
    _OnboardingData(
      image: "assets/images/Wallet.png",
      description: "Second Screen",
    ),
    _OnboardingData(
      image: "assets/images/Steps.png",
      description: "Third Screen",
    ),
    _OnboardingData(
      image: "assets/images/LocationPermission.png",
      description: "Third Screen",
    ),
    _OnboardingData(
      image: "assets/images/Crypto.png",
      description: "Third Screen",
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
      currentIndex = index;
    });
  }

  void nextFunction() {
    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }
  void previousFunction() {
    _pageController.previousPage(duration: _kDuration, curve: _kCurve);
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
                    onNext: d.key < _onboardingData.length
                      ? nextFunction
                      : () {}
                  )
                ).toList()
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Indicator(currentIndex: currentIndex, steps: _onboardingData.length),
            ),
          ],
        )
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int steps, currentIndex;

  const Indicator({super.key, required this.steps, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            steps,
            (index) => Container(
              height: 4,
              width: constraint.maxWidth / steps,
              color: index <= currentIndex 
                ? CustomColors.primaryBlackColor
                : CustomColors.primaryWhiteColor,
            ),
          ),
        );
      }
    );
  }
}

class OnboardingStep extends StatelessWidget {
  const OnboardingStep({super.key, required this.imageName, required this.description, this.onNext});

  final String description;
  final VoidCallback? onNext;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 80),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Image.asset(
                imageName,
                width: constraints.maxWidth * 0.9,
                height: constraints.maxWidth * 0.9,
                fit: BoxFit.cover,
                
              );
            }
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: Text(
                description, 
                textAlign: TextAlign.center, 
                style: Theme.of(context).primaryTextTheme.displayLarge!
                  .copyWith(fontWeight: FontWeight.w800)   
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () => onNext?.call(),
                  child: const Text('Next'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
