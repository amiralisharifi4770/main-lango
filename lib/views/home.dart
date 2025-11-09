import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lango/config/constants.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.dashboardColor,
      child: ListView(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.person_fill),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.chat_bubble),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
