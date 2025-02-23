import 'package:ecommerce/common/images/t_circular_image.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/text/section_heading.dart';
import 'package:ecommerce/common/widgets/text/t_brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/features/shop/screens/brand/all_brands.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text("Store", style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          /// Définit un SliverAppBar comme en-tête de la page
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,

                /// Désactive le bouton retour par défaut
                pinned: true,

                /// L'AppBar reste visible en haut lorsqu'on fait défiler
                floating: true,

                /// Permet à l'AppBar d'apparaître immédiatement lorsqu'on fait défiler vers le haut
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black

                    /// Définit la couleur de fond en mode sombre
                    : TColors.white,

                /// Couleur de fond en mode clair
                expandedHeight: 440,

                /// Hauteur maximale lorsque l'AppBar est étendu
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes
                      .defaultSpace), // Ajoute un espacement autour du contenu
                  child: ListView(
                    physics:
                        const NeverScrollableScrollPhysics(), // Empêche le défilement indépendant de la liste
                    shrinkWrap: true,

                    /// Adapte la taille de la liste à son contenu
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Espacement entre les éléments
                      /// Champ de recherche dans la boutique avec des bordures activées
                      const TSearchContainer(
                        text: "Search in store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      /// Espacement entre sections

                      ///Featured Brands
                      TSectionHeading(
                        title: "Featured Brands",
                        onPressed: () =>Get.to(() =>const AllBrandsScreen()) ,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      ///Brands grid
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: TRoundedContainer(
                              padding: const EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  ///Icon
                                  TCircularImage(
                                    imageUrl: TImages.clothIcon,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overLayColor:
                                        THelperFunctions.isDarkMode(context)
                                            ? TColors.white
                                            : TColors.black,
                                  ),
                                  const SizedBox(
                                      height: TSizes.spaceBtwItems / 2),

                                  ///Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const TBrandTitleWithVerifiedIcon(
                                            title: "nike",
                                            brandTextSize: TextSizes.large),
                                        Text(
                                          "256 products",
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),

                ///Tabs
                bottom: const TTabBar(tabs: [
                  Tab(
                    child: Text("Sports"),
                  ),
                  Tab(
                    child: Text("Furniture"),
                  ),
                  Tab(
                    child: Text("Electronics"),
                  ),
                  Tab(
                    child: Text("Clothes"),
                  ),
                  Tab(
                    child: Text("Cosmetics"),
                  ),
                ]),
              )
            ];
          },
          body: const TabBarView(children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
          ]), // Contenu principal de la page
        ),
      ),
    );
  }
}




