import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_cart/product_card_vertical.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Popular Products"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            ///Dropdown
            DropdownButtonFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              items: [
               "Name",
                "Higher Price",
                "Lower Price",
                "Sale",
                "Newest",
                "Popularity",
              ].map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
              onChanged: (value) {},
            ),
            ///Products
            TGridLayout(itemCount: 10, itemBuilder: (_, index) => const TProductCardVertical(),)
          ]),
        ),
      ),
    );
  }
}
