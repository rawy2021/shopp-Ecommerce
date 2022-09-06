import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping/core/utlis/button/custom_button.dart';
import 'package:shoping/core/utlis/size_config.dart';
import 'package:shoping/features/splash/presntion/Auth/presentation/pages/widgets/complete_infromation/complete_infromation.dart';
import 'package:shoping/features/splash/presntion/on_boarding/presentation/wedgit/space_wedgit.dart';

class LoginViewBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          // VerticalSpace(10),
          SizedBox(
            child: Image.asset('assets/images/logo.png'),
            height: SizeConfig.defultSize! *20,
          ),
          const Text('Fruit Market',
              style: TextStyle(
                fontSize: 33,
                color: Color(0xff69a03a),
      ),
          ),
          Expanded(child: SizedBox()),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButtonWithICon(
                    onTap: (){
                      Get.to(() =>CompleteInfromationView(),
                      duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft,
                      );
                    },
                    color: Color(0xFFdb3236),
                    iconData: Icons.email_outlined,
                    text: 'Log in with',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButtonWithICon(
                    color: Color(0xFF6495ED),
                    iconData: Icons.facebook,
                    text: 'Log in with',
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
