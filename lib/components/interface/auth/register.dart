import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/button/button.dart';
import 'package:lango/components/input/text_field.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/text_style.dart';
import 'package:lango/controllers/login_controller.dart';
import 'package:lango/router/app_route.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(CupertinoIcons.lock, color: CustomColors.primary, size: 30),
          CustomEdge.vSeprator2x,
          CustomEdge.vSeprator2x,
          Text(
            'Registeration',
            style: CustomTextStyle.title(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          CustomEdge.vSeprator2x,
          Text(
            'Please fill yourinfoation to register',

            style: CustomTextStyle.title(color: CustomColors.mutedForground),
          ),
          CustomEdge.vSeprator,
          CustomTextField(
            lable: 'First name',
            suffixIcon: Icon(CupertinoIcons.person),
          ),

          Spacer(flex: 2),
          CustomButton(
            title: 'Continue',
            // onPressed: controller.login,
            onPressed: () => Get.offNamed(AppRoutes.menu),
          ),
        ],
      ),
    );
  }
}
