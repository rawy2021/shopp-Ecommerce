import 'package:flutter/material.dart';
import 'package:shoping/core/utlis/button/custom_button.dart';
import 'package:shoping/core/utlis/widget/complete_infromation_item.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/space_wedgit.dart';

class CompleteInfromationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          VerticalSpace(value: 10,),
          CompleteInfromationItem(text: 'Enter Your Name'),
          VerticalSpace(value: 3,),
          CompleteInfromationItem(text: 'Enter Your Phone Number'),
          VerticalSpace(value: 3,),
          CompleteInfromationItem(text: 'Enter Your Address',maxlines: 5,),
          VerticalSpace(value: 5,),
          CustomGeneralButton(
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
