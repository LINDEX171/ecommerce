import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///AppBar
      appBar: TAppBar(title: Text("Reviews & Ratings"), showBackArrow: true),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Ratings and Reviews are verified and are from people who use the name type of device that you use"),
                SizedBox(height: TSizes.spaceBtwItems),

                ///Overal product Ratings
                TOverallProductRating(),
              ],
            )),
      ),
    );
  }
}


