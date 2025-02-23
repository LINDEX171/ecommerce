import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/products_cart/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ]);
  }
}