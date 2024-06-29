import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/address_data.dart';
import 'package:ptc_test2/views/screens/add_new_card.dart';
import 'package:ptc_test2/views/widgets/cart/add_address_bottom_sheet.dart';
import 'package:ptc_test2/views/widgets/checkout/add_address_button.dart';
import 'package:ptc_test2/views/widgets/checkout/checkout_app_bar.dart';
import 'package:ptc_test2/views/widgets/checkout/checkout_item.dart';
import 'package:ptc_test2/views/widgets/product/custom_primary_button.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String selectedAddress = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CheckoutAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSize.s56),
            Text(
              'Delivery Address',
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: AppColors.black),
            ),
            const SizedBox(height: AppSize.s24),
            ...List.generate(
              addressData.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: AppPadding.p24),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedAddress = addressData[index].name;
                      });
                    },
                    child: CheckoutItem(
                      title: addressData[index].name,
                      address: addressData[index].address,
                      isChecked: selectedAddress == addressData[index].name,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: AppSize.s56),
            Center(
              child: AddAddressButton(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AddAddressBottomSheet();
                    },
                  );
                },
              ),
            ),
            const Spacer(),
            CustomPrimaryButton(
              text: 'Add Card',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddNewCard(),
                ),
              ),
            ),
            const SizedBox(height: AppSize.s30),
          ],
        ),
      ),
    );
  }
}
