import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width=56,
    this.height=56,
    required this.imageUrl,
    this.backgroundColor ,
    this.fit = BoxFit.contain,
    this.padding=TSizes.sm,
    this.isNetworkImage = false,
    this.overLayColor,
  });

  final double? width, height;
  final String imageUrl;
  final Color? backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage;
  final double padding;
  final Color? overLayColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ?? (THelperFunctions.isDarkMode(context)? TColors.black:TColors.white),
          borderRadius: BorderRadius.circular(TSizes.md)),
      child: Center(
        child: Image(
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
          fit: fit,
          color: overLayColor,
        ),
      ),
    );
  }
}
