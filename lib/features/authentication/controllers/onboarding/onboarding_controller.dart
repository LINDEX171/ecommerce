import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  //variable
  final pagecontroller = PageController();
  Rx<int>  currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex= index;
}