import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/conastant.dart';
import 'package:shoping/features/splash/presntion/wedgit/splash_body.dart';

class SplashView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }
}
