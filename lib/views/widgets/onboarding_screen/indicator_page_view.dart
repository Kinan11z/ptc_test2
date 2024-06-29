import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';

class IndicatorPageView extends StatelessWidget {
  const IndicatorPageView(
      {super.key,
      required this.currentPageView,
      required this.itemCount,
      required this.activeWidth,
      required this.inActiveWidth,
      this.activeHight = 4,
      this.inActiveHight = 4,
      required this.activeColor,
      required this.inActiveColor});
  final int currentPageView;
  final int itemCount;
  final double activeWidth;
  final double inActiveWidth;
  final double activeHight;
  final double inActiveHight;
  final Color activeColor;
  final Color inActiveColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        itemCount,
        (index) => currentPageView == index
            //* Active
            ? Padding(
                padding: const EdgeInsets.only(right: AppPadding.p8),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: activeWidth,
                  height: activeHight,
                  decoration: BoxDecoration(
                      color: activeColor,
                      borderRadius: BorderRadius.circular(4)),
                ),
              )
            //* inActive
            : Padding(
                padding: const EdgeInsets.only(right: AppPadding.p8),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: inActiveWidth,
                  height: inActiveHight,
                  decoration: BoxDecoration(
                      color: inActiveColor,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
      ),
    );
  }
}
