import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: TSpacingStyle.paddingWithAppBarHeight,child: Column(
          children: [
            ///logo , title & subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Image(
                   height: 150,
                    image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
                   Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                   SizedBox(height: TSizes.sm,),
                   Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
            ],
            )
          ],
        )),

      ),
    );
  }
}
