import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/button/button.dart';
import 'package:lango/components/input/text_field.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/text_style.dart';
import 'package:lango/controllers/login_controller.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});
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
            'Login in to Lango!',
            style: CustomTextStyle.title(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
          CustomEdge.vSeprator2x,
          Text(
            'OTP sent to your phone',
            style: CustomTextStyle.title(color: CustomColors.mutedForground),
          ),
          Spacer(),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Pinput(
              length: 4,
              animationCurve: Curves.linear,
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: CustomTextStyle.title(),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColors.mutedForground),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              errorPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: CustomTextStyle.title(color: Colors.red),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              errorTextStyle: CustomTextStyle.title(color: Colors.red),
              validator: (s) {
                return s == '2222' ? null : 'please enter valid otp';
              },
            ),
          ),
          CustomEdge.vSeprator,
          Row(children: [
            
          ],),
          Spacer(flex: 2),
          CustomButton(
            title: 'Continue',
            onPressed: controller.otp,
            // onPressed: () => Get.offNamed(AppRoutes.menu),
          ),
        ],
      ),
    );
  }
}
