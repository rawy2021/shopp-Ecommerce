import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/widget/custtom_text_field.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/space_wedgit.dart';

class CompleteInfromationItem extends StatelessWidget{
  const CompleteInfromationItem({Key? key,required this.text, this.inputType, this.maxlines});

  final String text;
  final TextInputType? inputType;
  final int? maxlines;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          textHeightBehavior:
          TextHeightBehavior(
            applyHeightToFirstAscent: false,),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(value: 2,),
        customTextFromField(
          maxLines: maxlines,
          inputType: inputType,
        ),

      ],
    );
  }
}
