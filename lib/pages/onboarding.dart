import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'login.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  void goToLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(onThemeChanged: onThemeChanged),
      ),
    );
  }
   Widget circleImage(String path) {
    return ClipOval(
      child: Image.asset(
        path,
        width: 250,
        height: 250,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: context.tr('onboarding.title1'),
          body: context.tr('onboarding.body1'),
          image: circleImage('assets/images/Falcon in Golden Hood.jpeg'),
        ),
        PageViewModel(
          title: context.tr('onboarding.title2'),
          body: context.tr('onboarding.body2'),
          image: circleImage('assets/images/download (6).jpeg'),
        ),
        PageViewModel(
          title: context.tr('onboarding.title3'),
          body: context.tr('onboarding.body3'),
          image: circleImage('assets/images/MIDDLE-EAST FALCONS ARE FLYING IN VAN CLEEF_.jpeg'),
        ),
      ],
      showSkipButton: true,
      skip: Text(context.tr('onboarding.skip')),
      next: Text(context.tr('onboarding.next')),
      done: Text(context.tr('onboarding.done')),
      onSkip: () => goToLogin(context),
      onDone: () => goToLogin(context),
    );
  }
}