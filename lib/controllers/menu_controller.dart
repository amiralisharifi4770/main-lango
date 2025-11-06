import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MenuItem{
  int index;
  IconData icon;
  
  MenuItem(this.index,this.icon);
}

class CustomMenuController extends GetxController{

  RxInt currentIndex=0.obs;


  List<MenuItem> menuItems=[
    MenuItem(0, CupertinoIcons.home),
    MenuItem(1, CupertinoIcons.tv),
    MenuItem(2, CupertinoIcons.cube_box),
    MenuItem(3, CupertinoIcons.chat_bubble),
    MenuItem(4, CupertinoIcons.uiwindow_split_2x1),
  ];
  
  changeScreen(int index){
    currentIndex.value=index;
    update();
  }

}