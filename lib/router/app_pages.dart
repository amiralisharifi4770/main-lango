import 'package:get/get.dart';
import 'package:lango/router/app_route.dart';
import 'package:lango/router/binding.dart';
import 'package:lango/views/auth/login.dart';
import 'package:lango/views/menu.dart';
import 'package:lango/views/on_board.dart';
import 'package:lango/views/splash.dart';

abstract class AppPages {
  static List<GetPage> getPages = [
    GetPage(name: AppRoutes.splash, page: () => SplashPage(),binding: CustomBinding()),
    GetPage(name: AppRoutes.onBoard, page: ()=>OnboardPage()),
    GetPage(name: AppRoutes.login, page: () => LoginView()),
    GetPage(name: AppRoutes.menu, page: () => MenuView()),
  ];
}