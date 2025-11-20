import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lango/components/button/button.dart';
import 'package:lango/components/input/text_field.dart';
import 'package:lango/components/interface/auth/get_phone.dart';
import 'package:lango/components/interface/auth/otp.dart';
import 'package:lango/components/interface/auth/register.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/text_style.dart';
import 'package:lango/controllers/login_controller.dart';
import 'package:lango/router/app_route.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        body: Padding(
          padding: CustomEdge.extraLarge,
          child: controller.state.value == LoginState.getPhoneNumber
              ? GetPhoneNumber()
              : controller.state.value == LoginState.register
              ? Register()
              : Otp(),
        ),
      ),
    );
  }
}
