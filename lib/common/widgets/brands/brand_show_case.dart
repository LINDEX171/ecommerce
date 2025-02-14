import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          ///Brands with products count
          const TBrandCard(showBorder: true),
          const SizedBox(height: TSizes.spaceBtwItems,),
          ///Brand top 3 product images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded(child: TRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.sm),
      backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkGrey:TColors.light,
      child: Image(image: AssetImage(image),fit: BoxFit.contain),
    ));
  }
}