import 'package:get/get.dart';
import 'package:lango/controllers/login_controller.dart';
import 'package:lango/controllers/menu_controller.dart';
import 'package:lango/controllers/on_board_controller.dart';
import 'package:lango/controllers/splash_controller.dart';

class CustomBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.lazyPut(() => OnboardController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => CustomMenuController());
  }
}