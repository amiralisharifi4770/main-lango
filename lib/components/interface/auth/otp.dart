import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/button/button.dart';
import 'package:lango/components/input/text_field.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/text_style.dart';
import 'package:lango/controllers/login_controller.dart';
import 'package:lango/router/app_route.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});
  @override
  Widget build(BuildContext context) {
    final CountdownController timeController = new CountdownController(
      autoStart: true,
    );
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  color: CustomColors.primaryOverlay,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.clock, color: CustomColors.primary),
                    CustomEdge.hSeprator,
                    Countdown(
                      seconds: 120,

                      build: (BuildContext context, double time) => Text(
                        time.toString(),
                        style: CustomTextStyle.title(
                          color: CustomColors.primary,
                        ),
                      ),
                      interval: Duration(seconds: 1),
                      onFinished: () {
                        print('Timer is done!');
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    CustomColors.primaryOverlay,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Send again',
                      style: CustomTextStyle.title(color: CustomColors.primary),
                    ),
                    Icon(Icons.refresh, color: CustomColors.primary),
                  ],
                ),
              ),
            ],
          ),
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
