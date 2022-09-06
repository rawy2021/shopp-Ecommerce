import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/utlis/size_config.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/on_boarding.view.dart';

class SplashBody extends StatefulWidget{
  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController=
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));
    fadingAnimation=
        Tween<double>(begin: 2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text('Fruit market',style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),),
          ),
          Image.asset('assets/images/splash.png'),
        ]
    )
    );
  }

  void goToNextView() {
    Future.delayed(Duration (seconds: 3),(){
      Get.to(()=>OnBoardingView(),transition: Transition.fade);
    });
  }
}
