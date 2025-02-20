import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ///Subtitle
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal",style: Theme.of(context).textTheme.bodyMedium,),
            Text("1250 fcfa",style: Theme.of(context).textTheme.bodyMedium,),
          ],),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        ///Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fee",style: Theme.of(context).textTheme.bodyMedium,),
            Text("3500",style: Theme.of(context).textTheme.labelLarge,),
          ],),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        ///Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax fee",style: Theme.of(context).textTheme.bodyMedium,),
            Text("3500",style: Theme.of(context).textTheme.labelLarge,),
          ],),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        ///Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total",style: Theme.of(context).textTheme.bodyMedium,),
            Text("3500",style: Theme.of(context).textTheme.titleMedium,),
          ],),
      ],
    );
  }
}
