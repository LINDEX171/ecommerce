import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddRemove extends StatelessWidget {
  const TProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 70),
        ///Add Remove Button
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TCircularIcon(
              icon: Iconsax.minus,
              width: 32,
              height: 32,
              size: TSizes.md,
              color: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.black,backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.darkGrey
                : TColors.light,
            ),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text("2",style: Theme.of(context).textTheme.titleSmall,),
            SizedBox(width: TSizes.spaceBtwItems,),
            TCircularIcon(
              icon: Iconsax.add,
              width: 32,
              height: 32,
              size: TSizes.md,
              color: TColors.white,
              backgroundColor: TColors.primary,
            ),
          ],
        ),
      ],
    );
  }
}