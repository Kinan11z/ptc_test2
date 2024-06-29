import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/screens/orders_screen.dart';
import 'package:ptc_test2/views/widgets/add_new_cart/add_new_cart_app_bar.dart';
import 'package:ptc_test2/views/widgets/cart/salary_price.dart';
import 'package:ptc_test2/views/widgets/custom_form_text_field.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  late TextEditingController cardHolderName;
  late TextEditingController cardNumber;
  late TextEditingController expDate;
  late TextEditingController cvc;
  @override
  void initState() {
    cardHolderName = TextEditingController();
    cardNumber = TextEditingController();
    expDate = TextEditingController();
    cvc = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    cardHolderName.dispose();
    cardNumber.dispose();
    expDate.dispose();
    cvc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddNewCartAppBar(),
      body: Column(
        children: [
          const SizedBox(height: AppSize.s60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: CustomFormTextField(
              controller: cardHolderName,
              labelText: 'CARD HOLDER NAME',
            ),
          ),
          const SizedBox(height: AppSize.s30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: CustomFormTextField(
              controller: cardNumber,
              labelText: 'CARD NUMBER',
            ),
          ),
          const SizedBox(height: AppSize.s30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Row(
              children: [
                Expanded(
                  child: CustomFormTextField(
                    controller: expDate,
                    labelText: 'EXP DATE',
                  ),
                ),
                const SizedBox(width: AppSize.s35),
                Expanded(
                  child: CustomFormTextField(
                    controller: cvc,
                    labelText: 'CVC',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SalaryPrice(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrdersScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
