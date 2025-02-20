import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/common/widgets/text/product_price_text.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            "Cart",
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        ///Items in cart
        child: TCartItems(),
      ),

      ///Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => CheckoutScreen()), child: const Text("Checkout 3500Fcfa")),
      ),
    );
  }
}


