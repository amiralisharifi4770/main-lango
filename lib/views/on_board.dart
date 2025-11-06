import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/interface/on_board/on_board_page_view.dart';
import 'package:lango/config/local_path.dart';
import 'package:lango/controllers/on_board_controller.dart';

class OnboardPage extends GetView<OnboardController> {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: controller.pages,
      ),
    );
  }
}
