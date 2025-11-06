import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lango/components/button/button.dart';
import 'package:lango/components/input/text_field.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/text_style.dart';
import 'package:lango/controllers/login_controller.dart';
import 'package:lango/router/app_route.dart';

class LoginView extends GetView<LoginController>{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: CustomEdge.regular,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.lock ,color: CustomColors.primary,size: 30,),
              CustomEdge.vSeprator2x,
              CustomEdge.vSeprator2x,
              Text('Login in to Lango!',style: CustomTextStyle.title(fontWeight: FontWeight.w900,fontSize: 30),),
              CustomEdge.vSeprator2x,
              Text('Please enter your phone number',style: CustomTextStyle.title(color: CustomColors.mutedForground),),
              Spacer(),
              CustomTextField(lable: 'Phone Number',suffixIcon: Icon(CupertinoIcons.phone),),
              Spacer(flex: 2,),
              CustomButton(title: 'Login',onPressed: () => Get.offNamed(AppRoutes.menu),)
            ],
          ),
        ),
      ),
    );
  }
}