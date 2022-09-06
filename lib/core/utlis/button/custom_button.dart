import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/conastant.dart';
import 'package:shoping/core/utlis/size_config.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/space_wedgit.dart';

class CustomGeneralButton extends StatelessWidget{
  const CustomGeneralButton({this.text ,this.onTap});
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 60,
          width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFEAEDED),
            fontWeight: FontWeight.w500,
          ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}


class CustomButtonWithICon extends StatelessWidget {
  const CustomButtonWithICon({Key? key, this.text, this.iconData, this.onTap, this.color});
  final String? text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color?color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xFF707070),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            //HorizintalSpace(2),
            SizedBox(width: 15,),
            Text(
              text!,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
    );
  }
}
