import 'package:get/get.dart';
import 'package:lango/router/app_route.dart';

class SplashController extends GetxController{

  @override
  Future<void> onInit() async {

    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(AppRoutes.onBoard);
    super.onInit();
  }
}