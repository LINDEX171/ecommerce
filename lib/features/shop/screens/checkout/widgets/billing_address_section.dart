import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: "Shipping Address",buttonTitle: "Change",onPressed: () {},),
        Text("Lindex Dev",style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.phone,color: Colors.grey,size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text("+221774191926",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_history,color: Colors.grey,size: 16,),
            SizedBox(width: TSizes.spaceBtwItems,),
            Text("Dakar senegal fass mbao",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
      ],
    );
  }
}
