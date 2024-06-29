import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/address_data.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/search_bar.dart';
import 'package:ptc_test2/views/widgets/my_cart.dart';

class GrocerySliverAppbar extends StatefulWidget {
  const GrocerySliverAppbar({super.key});

  @override
  State<GrocerySliverAppbar> createState() => _GrocerySliverAppbarState();
}

class _GrocerySliverAppbarState extends State<GrocerySliverAppbar> {
  String selectedAddress = addressData[0].address;
  String selectedHour = '1 Hour';
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 240,
      pinned: true,
      snap: false,
      floating: false,
      title: Row(
        children: [
          Text(
            'Hey, Halal',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          const MyCart(
            iconColor: AppColors.white,
          )
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SearchBarApp(),
              const SizedBox(height: AppSize.s30),
              Row(
                children: [
                  Text(
                    'DELIVERY TO',
                    style: AppStyles.styleBold12(context)
                        .copyWith(color: AppColors.greyTextColor),
                  ),
                  const Spacer(),
                  Text(
                    'WITHIN',
                    style: AppStyles.styleBold12(context)
                        .copyWith(color: AppColors.greyTextColor),
                  )
                ],
              ),
              const SizedBox(height: AppMargin.m10),
              Row(
                children: [
                  DropdownButtonHideUnderline(
                    child: Expanded(
                      flex: 2,
                      child: DropdownButton(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconEnabledColor: AppColors.greyTextColor,
                        dropdownColor: AppColors.primaryColor,
                        isExpanded: true,
                        value: selectedAddress,
                        items: [
                          ...List.generate(
                            addressData.length,
                            (index) => DropdownMenuItem<String>(
                              value: addressData[index]
                                  .address, // تحديد القيمة الفريدة
                              child: Text(
                                addressData[index].address,
                                style: AppStyles.styleMedium14(context)
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                          )
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedAddress = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  const Spacer(),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconEnabledColor: AppColors.greyTextColor,
                      dropdownColor: AppColors.primaryColor,
                      value: selectedHour,
                      items: [
                        DropdownMenuItem(
                          value: '1 Hour',
                          child: Text(
                            '1 Hour',
                            style: AppStyles.styleMedium14(context)
                                .copyWith(color: AppColors.white),
                          ),
                        )
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.s12),
            ],
          ),
        ),
      ),
    );
  }
}
