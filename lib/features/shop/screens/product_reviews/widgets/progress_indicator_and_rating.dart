import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
            flex: 11,
            child: SizedBox(
                width:
                THelperFunctions.screenWidth() * 0.5,
                ///Linear progress indicator
                child: LinearProgressIndicator(
                  value: value,
                  minHeight: 11,
                  borderRadius: BorderRadius.circular(17),
                  backgroundColor: TColors.grey,
                  valueColor: AlwaysStoppedAnimation(
                      TColors.primary),
                )))
      ],
    );
  }
}