import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {

          }, icon: Image(height: TSizes.iconMd, width: TSizes.iconMd, image: AssetImage(TImages.google))),
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {

          }, icon: Image(height: TSizes.iconMd, width: TSizes.iconMd, image: AssetImage(TImages.facebook))),
        ),


      ],
    );
  }
}



