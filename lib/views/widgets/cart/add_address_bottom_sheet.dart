import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/address_data.dart';
import 'package:ptc_test2/models/address_model.dart';
import 'package:ptc_test2/views/widgets/custom_form_text_field.dart';
import 'package:ptc_test2/views/widgets/product/custom_primary_button.dart';

class AddAddressBottomSheet extends StatefulWidget {
  @override
  State<AddAddressBottomSheet> createState() => _AddAddressBottomSheetState();
}

class _AddAddressBottomSheetState extends State<AddAddressBottomSheet> {
  late TextEditingController addressName;
  late TextEditingController addressDetails;

  @override
  void initState() {
    addressName = TextEditingController();
    addressDetails = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    addressDetails.dispose();
    addressName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p20, vertical: AppPadding.p20),
        child: Column(
          children: [
            CustomFormTextField(
                labelText: 'Address Name', controller: addressName),
            const SizedBox(height: AppSize.s30),
            CustomFormTextField(
              labelText: 'Address Details',
              controller: addressDetails,
            ),
            const SizedBox(height: AppSize.s50),
            CustomPrimaryButton(
              text: 'Add',
              onTap: () {
                setState(() {
                  addressData.add(
                    AddressModel(
                        name: addressName.text, address: addressDetails.text),
                  );
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
