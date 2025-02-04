import 'package:ecommerce/common/styles/spacing_styles.dart';
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        height: 150,
                        image: AssetImage(
                            dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
                    Text(
                      TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(
                      height: TSizes.sm,
                    ),
                    Text(
                      TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),

                ///Form
                Form(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                      child: Column(
                  children: [
                      ///Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),

                      ///Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),

                      SizedBox(height: TSizes.spaceBtwInputFields / 2 ,),

                      /// remember me & forget password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        ///  remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {},),
                              Text(TTexts.rememberMe)
                            ],
                          ),

                          ///forget Password
                          TextButton(onPressed: () {}, child: Text(TTexts.forgetPassword)),
                        ],
                      ),
                      SizedBox(height: TSizes.spaceBtwSections,),

                      ///signing button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () {

                        }, child: Text(TTexts.signIn)),
                      ),
                      SizedBox(height: TSizes.spaceBtwItems,),
                      ///create account button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: () {

                        }, child: Text(TTexts.createAccount)),
                      ),

                  ],
                ),
                    ),
                ),


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
                Row(
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
                )
              ],
            )),
      ),
    );
  }
}
