import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/button/button.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/controllers/on_board_controller.dart';

class OnBoardPageView extends StatelessWidget {
  const OnBoardPageView({
    super.key,
    required this.mainImage,
    required this.titleImage,
    this.onPressed,
  });

  final String titleImage;
  final String mainImage;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    OnboardController controller = Get.find<OnboardController>();
    return Padding(
      padding: CustomEdge.extraLarge,
      child: Column(
        children: [
          Row(
            children: [
              CustomButton(
                title: 'Skip',
                bgColor: CustomColors.muted,
                textColor: CustomColors.forground,
                onPressed: () {
                  controller.pageController.animateToPage(
                    3,
                    duration: Duration(milliseconds: 3000),
                    curve: Curves.bounceInOut,
                  );
                },
              ),
            ],
          ),
          CustomEdge.vSeprator2x,
          Image.asset(titleImage, width: Get.width, height: Get.height / 4),
          Image.asset(mainImage, width: Get.width / 2),
          Spacer(),
          CustomButton(
            title: 'Get started',
            bgColor: onPressed==null?CustomColors.forground:null,
            onPressed: () {
              if (onPressed == null) {
                controller.pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              }else{
                onPressed!();
              }
            },
          ),
        ],
      ),
    );
  }
}
