import 'package:ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText(
      {super.key,
      this.color,
      required this.title,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.small});

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
      // Si la taille du texte est "small" enums, utiliser le style labelMedium et appliquer la couleur spécifiée
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)

          : brandTextSize == TextSizes.medium
      // Si la taille du texte est "medium" enums, utiliser le style bodyLarge et appliquer la couleur spécifiée
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)

          : brandTextSize == TextSizes.large
      // Si la taille du texte est "large" enums, utiliser le style titleLarge et appliquer la couleur spécifiée
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)

      // Si aucune des conditions précédentes n'est remplie, utiliser le style bodyMedium par défaut
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color),


    );
  }
}
