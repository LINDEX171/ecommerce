import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/common/widgets/text/product_title_text.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Attribute Pricing & description
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              ///Ttile, price and stack status
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TSectionHeading(title: "Variation", showActionButton: false),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),

                          ///Actual Price
                          Text(
                            "10f",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          ///Sale Price
                          TProductPriceText(price: "20")
                        ],
                      ),

                      ///Stack
                      Row(
                        children: [
                          TProductTitleText(
                            title: "Stock: ",
                            smallSize: true,
                          ),
                          Text(
                            "In StOck",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///Variation description
              const TProductTitleText(
                title:
                    "This is the Description of the product and it can go up to max 4lines",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Colors",showActionButton: false),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              children: [
                TChoiceChip(text: "Green",selected: true,onSelected: (value) {},),
                TChoiceChip(text: "Blue",selected: false,onSelected: (value) {},),
                TChoiceChip(text: "Yellow",selected: false,onSelected: (value) {},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Size",showActionButton: false),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 0,
              children: [
                TChoiceChip(text: "EU 34",selected: true,onSelected: (value) {},),
                SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),
                TChoiceChip(text: "EU 36",selected: false,onSelected: (value) {},),
                SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),
                TChoiceChip(text: "EU 38",selected: false,onSelected: (value) {},),
              ],
            )
          ],
        )
      ],
    );
  }
}


