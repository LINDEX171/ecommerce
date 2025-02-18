import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(TImages.userProfileImage1),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Text(
                    "John Doe",
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Row(
            children: [
              TRatingBarIndicator(rating: 4),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                "01 Nov, 2025",
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          ReadMoreText(
            "the user interface at the app is quite intuitive, iwas able to navigate and make puschases seamlessly, great job",
            trimLines: 1,
            trimMode: TrimMode.Line,
            trimExpandedText: " Show less",
            trimCollapsedText: " Show more",
            lessStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: TColors.primary),
            moreStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: TColors.primary),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          ///Company review
          TRoundedContainer(
            backgroundColor: dark ? TColors.darkGrey : TColors.grey,
            child: Padding(
                padding: EdgeInsets.all(TSizes.md),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lindex Store",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "02 Nov, 2023",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    ReadMoreText(
                      "the user interface at the app is quite intuitive, iwas able to navigate and make puschases seamlessly, great job",
                      trimLines: 1,
                      trimMode: TrimMode.Line,
                      trimExpandedText: " Show less",
                      trimCollapsedText: " Show more",
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: TColors.primary),
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: TColors.primary),
                    ),
                  ],
                )),
          ),
          SizedBox(height: TSizes.spaceBtwSections,),

        ],
      ),
    );
  }
}
