import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/features/splash/presntion/splash_veiw.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(

      ),



    );
  }
}

