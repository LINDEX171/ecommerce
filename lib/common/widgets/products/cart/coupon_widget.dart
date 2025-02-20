import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
          top: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(children: [
        ///TextField
        Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Have a promo code ? enter here",
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            )),

        ///Button
        SizedBox(
          width: 80,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? TColors.white.withOpacity(0.5)
                    : TColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.1),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              onPressed: () {},
              child: Text("Apply")),
        )
      ]),
    );
  }
}