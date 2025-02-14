import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
     this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor! // Si backgroundColor est défini, on l'utilise.
            : THelperFunctions.isDarkMode(context)
                ? TColors.black.withOpacity(0.9)// Si le mode sombre est activé, utilise du noir avec une opacité de 90%.
                : TColors.white.withOpacity(0.9),// Sinon, utilise du blanc avec une opacité de 90%.
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
