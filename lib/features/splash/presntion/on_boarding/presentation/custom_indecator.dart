import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/conastant.dart';

class CustomIndicator extends StatelessWidget{
  const CustomIndicator({Key? key, this.dotIndex}) : super(key: key);
  final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: kMainColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: kMainColor)
        ),
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
