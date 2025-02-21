import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/products_cart/products_card_horizontal.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Sports Shirts"), showBackArrow: true),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///Banner
            TRoundedImage(
              imageUrl: TImages.promoBanner1,
              width: double.infinity,
              applyImageRadius: true,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Sub-Categories
            Column(
              children: [
                ///Heading
                TSectionHeading(
                  title: "Sports Shirts",
                  onPressed: () {},
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: TSizes.spaceBtwItems),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => TProductCardHorizontal(),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
