import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            const TProductImageSlider(),

            ///Product details
            Padding(padding: const EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
            ),
            child: Column(
              children: [
                ///Rating & share
                const TRatingAndShare(),
                ///Price,Title,Stack, & Brand
                const TProductMetaData(),
                ///Attributes
                const TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections,),
                ///Checkout Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: const Text("Checkout")),
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                ///Description
                const TSectionHeading(title: "Description",showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText("This t-shirt combines simplicity with modern elegance, making it a must-have for any occasion.dzzedzldzldlzlzelzdldl zlzedlz zdlzdlzdlz edldld",trimLines: 2,trimMode: TrimMode.Line,trimCollapsedText: " Show more",trimExpandedText: " Less",moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: TColors.darkGrey),lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: TColors.darkGrey),),

                ///Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TSectionHeading(title: "Reviews(99)",onPressed: () {},showActionButton: false),
                    IconButton(onPressed: () => Get.to(() =>ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18),)
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}




