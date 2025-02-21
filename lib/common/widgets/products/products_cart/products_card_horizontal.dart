import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.softGrey),
      child: Row(children: [
        ///Thumbnail
        TRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Stack(
            children: [
              ///Thumbnail Image
              const SizedBox(
                height: 120,
                width: 120,
                child: TRoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),
              ),

              ///sale tag
              Positioned(
                top: 12,
                child: TRoundedContainer(
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
              ),

              ///Favorite iconbutton
              const Positioned(
                top: 0,
                right: 0,
                child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ),
            ],
          ),
        ),

        ///Details
        SizedBox(
          width: 172,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: "Grenn Nike Half Sleeves Shirt",
                        smallSize: true,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      TBrandTitleWithVerifiedIcon(title: "Nike")
                    ]),
              ),

              ///Price Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Price
                  const Flexible(child: TProductPriceText(price: "230uh hjjy hi0")),

                  ///Add to cart Button
                  Container(
                    decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius))),
                    child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(
                          child: Icon(Iconsax.add, color: TColors.white),
                        )),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
