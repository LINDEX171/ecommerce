import 'package:ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView(
       shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              const TBrandShowcase(images: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3,
              ],),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ///products
              TSectionHeading(title: "you might like", showActionButton: true, onPressed: () {

              },),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),)
            ],
          ),
        )
      ],
    );
  }
}
