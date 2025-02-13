import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/features/shop/controllers/home_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: const [
              TRoundedImage(
                imageUrl: TImages.promoBanner1,
              ),
              TRoundedImage(
                imageUrl: TImages.promoBanner2,
              ),
              TRoundedImage(
                imageUrl: TImages.promoBanner3,
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            )),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                 TCircularContainer(
                    backgroundColor: controller.carouselCurentIndex.value== i ? TColors.primary :TColors.grey,
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: 10)),
            ],
          ),
        )
      ],
    );
  }
}
