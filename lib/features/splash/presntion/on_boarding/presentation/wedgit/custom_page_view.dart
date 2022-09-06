import 'package:flutter/material.dart';
import 'package:shoping/features/splash/presntion/wedgit/page_view_item.dart';

class CustomPageView extends StatelessWidget{
  const CustomPageView({Key? key, required this.pageController}) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
       PageViewItem(
         image: "assets/images/1.png" ,
         text: "E Shopping",
         subtitl: "Explore  top organic fruits & grab them",
       ),
       PageViewItem(
         image: "assets/images/2.png",
         text: "Delivery on the way",
         subtitl: "Get your order by speed delivery",
       ),
       PageViewItem(
         image: "assets/images/3.png",
         text: "Delivery Arrived",
         subtitl: "Order is arrived at your Place",
       ),
      ],
    );
  }
}
