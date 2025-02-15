import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_wiidget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slider
            TCurvedEdgeWidget(
              child: Container(
                color: dark ? TColors.darkGrey : TColors.light,
                child: Stack(
                  children: [
                    ///Main large Image
                    SizedBox(
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(
                              TSizes.productImageRadius * 2),
                          child: Center(
                              child: Image(
                                  image: AssetImage(TImages.productImage5))),
                        )),

                    ///Image slider
                    Positioned(
                      right: 0,
                      bottom: 30,
                      left: TSizes.defaultSpace,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                           shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (_, index) => TRoundedImage(
                                width: 80,
                                imageUrl: TImages.productImage3,
                                backgroundColor:
                                    dark ? TColors.dark : TColors.white,
                                border: Border.all(color: TColors.primary),
                                padding: EdgeInsets.all(TSizes.sm)),
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: TSizes.spaceBtwItems),
                            itemCount: 4),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
