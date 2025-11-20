import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lango/config/constants.dart';
import 'package:lango/controllers/menu_controller.dart';
import 'package:lango/views/home.dart';
import 'package:lango/views/map/map.dart';

class MenuView extends GetView<CustomMenuController> {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomMenuController>(
      builder: (controller) => Scaffold(
        backgroundColor: CustomColors.muted,
        body: Stack(
          children: [
            IndexedStack(
              index: controller.currentIndex.value,
              children: [
                HomeView(),
                MapView(),
                Container(child: Center(child: Text('category'))),
                Container(child: Center(child: Text('message'))),
                Container(child: Center(child: Text('library'))),
              ],
            ),
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  height: 70,
                  width: Get.width - 50,
                  decoration: BoxDecoration(
                    color: CustomColors.background,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                        color: CustomColors.forground.withOpacity(.1),
                        offset: Offset(0, 0),
                        spreadRadius: .02,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: controller.menuItems
                        .map(
                          (item) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.currentIndex.value == item.index
                                  ? CustomColors.primary
                                  : null,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.changeScreen(item.index);
                              },
                              icon: Icon(
                                item.icon,
                                color:
                                    controller.currentIndex.value == item.index
                                    ? CustomColors.background
                                    : null,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
