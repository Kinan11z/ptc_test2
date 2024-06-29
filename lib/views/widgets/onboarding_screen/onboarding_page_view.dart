import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/onboarding_data.dart';
import 'package:ptc_test2/views/widgets/onboarding_screen/indicator_page_view.dart';
import 'package:ptc_test2/views/widgets/onboarding_screen/item_onboarding_page_view.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  late PageController pageController;
  int currentPageView = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentPageView = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemOnboardingPageView(
          pageController: pageController,
        ),
        const SizedBox(height: AppSize.s40),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p40),
            child: IndicatorPageView(
                itemCount: onboardingData.length,
                activeWidth: 38,
                inActiveWidth: 24,
                activeColor: AppColors.activeIndicatorColor,
                inActiveColor: AppColors.inActiveindicatorColor,
                currentPageView: currentPageView),
          ),
        ),
      ],
    );
  }
}
