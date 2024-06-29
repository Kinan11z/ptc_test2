import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/onboarding_data.dart';

class ItemOnboardingPageView extends StatelessWidget {
  const ItemOnboardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: onboardingData.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p40),
        child: Text(
          onboardingData[index],
          style: AppStyles.styleMedium18(context),
        ),
      ),
    );
  }
}
