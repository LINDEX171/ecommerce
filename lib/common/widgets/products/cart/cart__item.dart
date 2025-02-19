import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkGrey
              : TColors.light,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        ///Title, Price and Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TBrandTitleWithVerifiedIcon(title: "Nike"),
              Flexible(
                child: TProductTitleText(
                  title: "Black Sports Shoes",
                  maxLines: 1,
                ),
              ),

              ///Attributes
              Text.rich(TextSpan(children: [
                TextSpan(text: "Color ",style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "Green ",style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: "Size ",style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "UK 08",style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}