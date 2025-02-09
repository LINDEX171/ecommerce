import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCustomCurvedEdges(),
              child: Container(
                color: TColors.primary,
                padding: const EdgeInsets.all(0),
                width: double.infinity,
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top: -150,right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                      Positioned(top: 100,right: -250, child:TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
                      Column(children: [
                        ///Appbar
                      ],)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


