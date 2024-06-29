import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';
import 'package:ptc_test2/views/screens/categories_screen.dart';
import 'package:ptc_test2/views/screens/grocery_home.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int page = 0;
  late GlobalKey<CurvedNavigationBarState> _bottomNavigationKey;

  List<Widget> pages = const [
    GroceryHome(),
    CategoriesScreen(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  void initState() {
    _bottomNavigationKey = GlobalKey();
    super.initState();
  }

  List<Widget> _buildItems() {
    return [
      page == 0
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppSvg.homeOrange),
            )
          : SvgPicture.asset(AppSvg.home),
      page == 1
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppSvg.categoryOrange),
            )
          : SvgPicture.asset(AppSvg.category),
      page == 2
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppSvg.heart,
                colorFilter: const ColorFilter.mode(
                    AppColors.orangeContainerColor, BlendMode.srcIn),
              ),
            )
          : SvgPicture.asset(AppSvg.heart),
      page == 3
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppSvg.cool,
                colorFilter: const ColorFilter.mode(
                    AppColors.orangeContainerColor, BlendMode.srcIn),
              ),
            )
          : SvgPicture.asset(
              AppSvg.cool,
            ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppColors.buttonBackgroundColor,
        items: _buildItems(),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
      ),
      body: IndexedStack(
        index: page,
        children: pages,
      ),
    );
  }
}
