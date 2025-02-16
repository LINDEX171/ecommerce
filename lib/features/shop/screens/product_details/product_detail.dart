import 'package:ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            TProductImageSlider(),

            ///Product details
            Padding(padding: EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
            ),
            child: Column(
              children: [
                ///Rating & share
                TRatingAndShare(),
                ///Price,Title,Stack, & Brand
                TProductMetaData()
                ///Attributes
                ///Checkout Button
                ///Description
                ///Reviews
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}




