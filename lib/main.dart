import 'package:ecommerce/app.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  ///WIdget Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  ///Getx Local Storage
  await GetStorage.init();


  ///INITIALIZE FIREBASE
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
      // .then((FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  runApp(const App());
}
