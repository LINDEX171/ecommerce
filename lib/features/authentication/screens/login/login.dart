import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                ///logo , title & subtitle
                TLoginHeader(),

                ///Form
                TLoginForm(),


               ///Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Flexible(child: Divider(color: dark ?  TColors.darkGrey : TColors.grey,thickness: 0.5,indent: 60, endIndent: 5,)),
                    Text(TTexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelMedium),
                    Flexible(child: Divider(color: dark ?  TColors.darkGrey : TColors.grey,thickness: 0.5,indent: 5, endIndent: 60,))
                  ],
                ),

                SizedBox(width: TSizes.spaceBtwSections,),

                ///Footer
                TSocialButtons()
              ],
            )),
      ),
    );
  }
}

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {

          }, icon: Image(height: TSizes.iconMd, width: TSizes.iconMd, image: AssetImage(TImages.google))),
        ),
        SizedBox(width: TSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {

          }, icon: Image(height: TSizes.iconMd, width: TSizes.iconMd, image: AssetImage(TImages.facebook))),
        ),


      ],
    );
  }
}



