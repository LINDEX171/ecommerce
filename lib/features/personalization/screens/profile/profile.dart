import 'package:ecommerce/app.dart';
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
      appBar: TAppBar(showBackArrow: true, title: Text("Profile")),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),

            child: Column(
              children: [
                ///Profile Picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      TRoundedImage(imageUrl: TImages.user,width: 80,height: 80,),
                      TextButton(onPressed: () { }, child: Text("Change Profile Picture")),

                    ],
                  ),
                ),

                ///Details
                SizedBox(height: TSizes.spaceBtwItems / 2,),

                Divider(),
                SizedBox(height: TSizes.spaceBtwItems,),

                ///Heading profile info
                TSectionHeading(title: "Profile information",showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems,),


                TProfileMenu(title: "Name",value: "Lindexdev",onPressed: () {},),
                TProfileMenu(title: "Username",value: "Lindexdev",onPressed: () {},),
                SizedBox(height: TSizes.spaceBtwItems,),
                Divider(),
                SizedBox(height: TSizes.spaceBtwItems,),

                ///Heading Personal Info
                TSectionHeading(title: "Personal Information",showActionButton: false,),
                SizedBox(height: TSizes.spaceBtwItems,),

                TProfileMenu(onPressed: () {}, title: "User ID", value: "2723",icon: Iconsax.copy),
                TProfileMenu(onPressed: () {}, title: "E-mail", value: "lindex171@gmail.com"),
                TProfileMenu(onPressed: () {}, title: "Phone Number", value: "774191926"),
                TProfileMenu(onPressed: () {}, title: "Gender", value: "Male"),
                TProfileMenu(onPressed: () {}, title: "Date of birth", value: "17/06/2010"),
                const Divider(),
                SizedBox(height: TSizes.spaceBtwItems,),

                Center(
                  child: TextButton(onPressed: () {}, child: Text("Close Account",style: TextStyle(color: Colors.red),)),
                )
              ],
            ),



        ),
      ),
    );
  }
}


