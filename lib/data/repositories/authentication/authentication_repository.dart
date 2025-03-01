import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
   /// Variables
   final deviceStorage = GetStorage();

   ///Called from main.dart on app launch
   @override
  void onReady(){
     FlutterNativeSplash.remove();
     screenRedirect();
   }

   ///function to show relevant screen
  screenRedirect() async {
     ///Locale storage
    if(kDebugMode){
      print("========================= Get Srotage  Next button ====================");
      print(deviceStorage.read("IsFirstTime"));
    }

    deviceStorage.writeIfNull("IsFirstTime", true);
    deviceStorage.read("IsFirstTime") != true ? Get.offAll(()=>const LoginScreen()): Get.offAll(OnBoardingScreen());
  }
}