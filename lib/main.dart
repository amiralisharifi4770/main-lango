import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/router/app_pages.dart';
import 'package:lango/router/app_route.dart';
import 'package:lango/views/splash.dart';

void main() {
  runApp(const MainApplication());
}

class MainApplication extends StatelessWidget {
  const MainApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.getPages,
      initialRoute: AppRoutes.splash,
      builder: (context, child) => Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(child: child!)),
    );
  }
}
