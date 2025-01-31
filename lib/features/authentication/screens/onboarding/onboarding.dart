import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal Scrollable page
          PageView(
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1,title: TTexts.onBoardingTitle1,subtitle: TTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: TImages.onBoardingImage2,title: TTexts.onBoardingTitle2,subtitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(image: TImages.onBoardingImage3,title: TTexts.onBoardingTitle3,subtitle: TTexts.onBoardingSubTitle3,),
            ],
          ),
          OnBoardingSkip()

        ],
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: TDeviceUtils.getAppBarHeight(),right:TSizes.defaultSpace,
      child: TextButton(onPressed: () {

      }, child: const Text("Skip")),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
      required this.image, required this.title, required this.subtitle,
  });

 final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height:TSizes.spaceBtwItems,),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
