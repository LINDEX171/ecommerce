import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  ///variable
  final pagecontroller = PageController();
  Rx<int>  currentPageIndex = 0.obs;

   ///update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pagecontroller.jumpToPage(index);
    // pagecontroller.jumpTo(index.toDouble());
  }

  ///update Current index & jump to next page
  void nextPage(){
     if(currentPageIndex == 2){
       final storage = GetStorage();

       if(kDebugMode){
         print("========================= Get Srotage  Next button ====================");
         print(storage.read("IsFirstTime"));
       }
       storage.write("IsFirstTime", false);
       if(kDebugMode){
         print("========================= Get Srotage  Next button ====================");
         print(storage.read("IsFirstTime"));
       }

         Get.offAll(const LoginScreen());
     }else{
       int page = currentPageIndex.value + 1;
       pagecontroller.jumpToPage(page);
     }
  }

  ///update current index & jump to the last page
  void skipPage(){
    currentPageIndex.value = 2 ;
    pagecontroller.jumpToPage(2);
  }


}