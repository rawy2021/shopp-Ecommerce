import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/size_config.dart';

class HorizintalSpace extends StatelessWidget{
  final double? value;

   HorizintalSpace({this.value});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget{
  final double? value;

  VerticalSpace({this.value});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defultSize! * value!,
    );
  }
}

