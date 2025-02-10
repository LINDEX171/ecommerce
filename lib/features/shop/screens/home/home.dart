import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_headers_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///HEADER

            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// APP-BAR
                  THomeAppBar(),

                   SizedBox(height: TSizes.spaceBtwSections,),
                  /// Search bar
                  TSearchContainer(text: "Search in store",)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




