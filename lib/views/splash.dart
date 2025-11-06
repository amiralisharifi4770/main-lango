import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/components/loading/loading.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/config/edge.dart';
import 'package:lango/config/local_path.dart';
import 'package:lango/config/text_style.dart';
import 'package:lango/controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: CustomColors.primary,
      body: Center(child: Image.asset(LocalPath.logo,width: 200,height: 200,)),
      
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('connecting to server',style: CustomTextStyle.title(color: CustomColors.background),),
          CustomEdge.vSeprator,
          customLoading(color: CustomColors.background),
          CustomEdge.vSeprator
        ],
      ),
    );
  }
}
