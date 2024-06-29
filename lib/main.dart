import 'package:flutter/material.dart';
import 'package:ptc_test2/core/theme/app_theme.dart';
import 'package:ptc_test2/views/screens/onboarding_screen.dart';

void main() {
  runApp(const PtcTest2());
}

class PtcTest2 extends StatelessWidget {
  const PtcTest2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const OnboardingScreen(),
    );
  }
}
