import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// button retour qui apparait par defaut
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() =>const LoginScreen()), icon: const Icon(Icons.close))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Image
                 Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() * 0.6,),
                 SizedBox(height: TSizes.spaceBtwSections,),

                /// Title & Subtitle
                Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                SizedBox(height: TSizes.spaceBtwItems,),
                Text("contact@lindexdev.com",style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
                SizedBox(height: TSizes.spaceBtwItems,),
                Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                SizedBox(height: TSizes.spaceBtwSections,),
                ///  Buttons
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text(TTexts.tContinue)),),
                SizedBox(height: TSizes.spaceBtwItems,),
                SizedBox(width: double.infinity,child: TextButton(onPressed: () {}, child: Text(TTexts.resendEmail)),),
              ],
            )),
      ),
    );
  }
}
