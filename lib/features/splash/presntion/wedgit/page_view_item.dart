import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/size_config.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/space_wedgit.dart';

class PageViewItem extends StatelessWidget{
  final String? text;
  final String? subtitl;
  final String? image;

   PageViewItem({this.text, this.subtitl, this.image}) ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         VerticalSpace(value: 20,),
        SizedBox(
            height: SizeConfig.defultSize! * 20,
            child: Image.asset(image!)),
      VerticalSpace(value: 3,),
      Text(
      text!,
      style: TextStyle(
        fontSize: 20.0,
        color: const Color(0xFF2F2E41),
        fontWeight: FontWeight.w600,
      ),
    ),
    VerticalSpace(value: 1.5,),
    Text(
    subtitl!,
    style: TextStyle(
    fontSize: 15.0,
    color: const Color(0xFF78787C),
    ),
    ),
      ],
    );
  }
}
