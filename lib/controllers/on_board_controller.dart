import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/interface/on_board/on_board_page_view.dart';
import 'package:lango/config/local_path.dart';
import 'package:lango/router/app_route.dart';

class OnboardController extends GetxController{

  List<Widget> pages=[
    OnBoardPageView(mainImage: LocalPath.onBoardImg1, titleImage: LocalPath.onBoardText1),
    OnBoardPageView(mainImage: LocalPath.onBoardImg2, titleImage: LocalPath.onBoardText2),
    OnBoardPageView(mainImage: LocalPath.onBoardImg3, titleImage: LocalPath.onBoardText3),
    OnBoardPageView(mainImage: LocalPath.onBoardImg4, titleImage: LocalPath.onBoardText4,onPressed: () {
     Get.offNamed(AppRoutes.login);
    },),



  ];
  PageController pageController =PageController(initialPage: 0);

}