import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';

class TitleOnboarding extends StatelessWidget {
  const TitleOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Your holiday \nshopping \ndelivered to your \nhome  ',
            style: AppStyles.styleBold30(context),
          ),
          WidgetSpan(child: SvgPicture.asset(AppSvg.house))
        ],
      ),
    );
  }
}
