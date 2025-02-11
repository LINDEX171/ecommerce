import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_headers_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///HEADER

            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// APP-BAR
                  THomeAppBar(),

                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Search bar
                  TSearchContainer(
                    text: "Search in store",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(children: [
                      ///heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///categories
                      THomeCategories()
                    ]),
                  ),
                ],
              ),
            ),
            ///Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(),
            )
          ],
        ),
      ),
    );
  }
}




