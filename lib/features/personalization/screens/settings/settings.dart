import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_headers_container.dart';
import 'package:ecommerce/common/widgets/list_tiles/settings_menu_title.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/add_new_address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                 TUserProfileTile(onPressed: () => Get.to(() =>const ProfileScreen()) ,),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///Account Settings
                  const TSectionHeading(
                      title: "Account Settings", showActionButton: false),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Adresses",
                    subTitle: "Set shopping delivery adress",
                    onTap: () => Get.to(() =>UserAddressScreen()) ,
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In progress and Completed Orders",
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification  message",
                    onTap: () {},
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  ///App Settings
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subTitle: "Upload data to your cloud firebase"),
                  TSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subTitle: "Upload data to your cloud firebase",
                      trailing: Switch(value: true, onChanged: (value) { },),
                  ),
                  TSettingMenuTile(
                      icon: Iconsax.security_user,
                      title: "safe mode",
                      subTitle: "Search result is safe",
                     trailing: Switch(value: false, onChanged: (value) { }),
                  ),
                  TSettingMenuTile(
                      icon: Iconsax.image,
                      title: "Hd Image quality",
                      subTitle: "Set Image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) { }),
                  ),

                  ///logout button

                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {
                      
                    }, child: const Text("Logout")),
                  ),


                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,)

                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
