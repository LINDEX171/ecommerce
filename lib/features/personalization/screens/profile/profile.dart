import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text("Profile")),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),

            child: Column(
              children: [
                ///Profile Picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TRoundedImage(imageUrl: TImages.user,width: 80,height: 80,),
                      TextButton(onPressed: () { }, child: const Text("Change Profile Picture")),

                    ],
                  ),
                ),

                ///Details
                const SizedBox(height: TSizes.spaceBtwItems / 2,),

                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),

                ///Heading profile info
                const TSectionHeading(title: "Profile information",showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),


                TProfileMenu(title: "Name",value: "Lindexdev",onPressed: () {},),
                TProfileMenu(title: "Username",value: "Lindexdev",onPressed: () {},),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),

                ///Heading Personal Info
                const TSectionHeading(title: "Personal Information",showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                TProfileMenu(onPressed: () {}, title: "User ID", value: "2723",icon: Iconsax.copy),
                TProfileMenu(onPressed: () {}, title: "E-mail", value: "lindex171@gmail.com"),
                TProfileMenu(onPressed: () {}, title: "Phone Number", value: "774191926"),
                TProfileMenu(onPressed: () {}, title: "Gender", value: "Male"),
                TProfileMenu(onPressed: () {}, title: "Date of birth", value: "17/06/2010"),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems,),

                Center(
                  child: TextButton(onPressed: () {}, child: const Text("Close Account",style: TextStyle(color: Colors.red),)),
                )
              ],
            ),



        ),
      ),
    );
  }
}


