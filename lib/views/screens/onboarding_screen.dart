import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_image.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/screens/app_bottom_navigation_bar.dart';
import 'package:ptc_test2/views/widgets/onboarding_screen/onboarding_button.dart';
import 'package:ptc_test2/views/widgets/onboarding_screen/onboarding_page_view.dart';
import 'package:ptc_test2/views/widgets/onboarding_screen/title_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p40),
            child: TitleOnboarding(),
          ),
          const OnboardingPageView(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p40),
            child: Image.asset(
              AppImage.onboarding,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p40),
            child: OnboardingButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppBottomNavigationBar(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
