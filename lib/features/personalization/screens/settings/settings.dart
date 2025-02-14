import 'package:ecommerce/common/images/t_circular_image.dart';
import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_headers_container.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                ///AppBar
                TAppBar(
                  title: Text("Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white)),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///User profile card
                TUserProfileTile(),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            ))

            ///Body
          ],
        ),
      ),
    );
  }
}


