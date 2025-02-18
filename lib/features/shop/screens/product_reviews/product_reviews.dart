import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///AppBar
      appBar: const TAppBar(title: Text("Reviews & Ratings"), showBackArrow: true),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    "Ratings and Reviews are verified and are from people who use the name type of device that you use"),
                const SizedBox(height: TSizes.spaceBtwItems),

                ///Overal product Ratings
                const TOverallProductRating(),
                const TRatingBarIndicator(rating: 3.5,),
                Text("12.611",style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(height: TSizes.spaceBtwSections,),
                ///User Reviews list
                const TUserReviewCard(),
                const TUserReviewCard(),
                const TUserReviewCard(),
              ],
            )),
      ),
    );
  }
}


