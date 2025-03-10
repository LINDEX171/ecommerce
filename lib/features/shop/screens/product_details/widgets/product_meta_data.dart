import 'package:ecommerce/common/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price & sale price
        Row(
          children: [
            ///Sale
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text("25%",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            ///Price
            Text("FCFA150",style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TProductPriceText(price: "175", isLarge: true,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

        ///Title
        const TProductTitleText(title: "Screen Nike Sports Shirt"),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
        ///Stack Status
        Row(
          children: [
            const TProductTitleText(title: "Status"),
            const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
            Text("In Stack",style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5,),
       ///Brand
        Row(
          children: [
            TCircularImage(imageUrl: TImages.shoeIcon,width: 32,height: 32,overLayColor: dark?TColors.white:TColors.black),
            const TBrandTitleWithVerifiedIcon(title: "Nike",brandTextSize: TextSizes.medium,),
          ],
        )

      ],
    ) ;
  }
}
