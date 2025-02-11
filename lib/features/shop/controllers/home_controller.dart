import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final  carouselCurentIndex = 0.obs;

  ///update current index when page scroll
  void updatePageIndicator(index) {
    carouselCurentIndex.value = index;
  }
}