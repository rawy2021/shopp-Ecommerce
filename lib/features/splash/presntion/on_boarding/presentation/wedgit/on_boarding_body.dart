import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/utlis/button/custom_button.dart';
import 'package:shoping/core/utlis/conastant.dart';
import 'package:shoping/core/utlis/size_config.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/custom_page_view.dart';
import 'package:shoping/features/splash/presntion/wedgit/login_view.dart';

import '../custom_indecator.dart';

class OnBoardingViewBody extends StatefulWidget{

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(
      initialPage: 0
    )..addListener(() {
      setState(() {

      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defultSize! *20,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients?  pageController?.page :0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients? (pageController?.page == 2 ? false : true) : true,
          child: Positioned(
            top: SizeConfig.defultSize! * 10,
            right: 33,
            child: Text('Skip',
            style: TextStyle(
              fontSize: 14
            ),
            textAlign: TextAlign.right,
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defultSize! * 10,
          right: SizeConfig.defultSize! * 10,
          bottom: SizeConfig.defultSize! *10,
            child: CustomGeneralButton(
              onTap: (){
                if(pageController!.page! < 2){
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }else{
                  Get.to(() => LoginView (),
                      transition:Transition.rightToLeft,
                      duration: Duration(milliseconds: 500),
                  );

                }
              },

              text:pageController!.hasClients? (pageController?.page == 2 ? "Get Started" : "Next") :"Next",
            ),)
      ],
    );
  }
}
