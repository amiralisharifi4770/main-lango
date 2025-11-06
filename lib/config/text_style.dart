import 'package:flutter/material.dart';
import 'package:lango/config/font_size.dart';


class CustomTextStyle{
  static TextStyle title({Color color=Colors.black,FontWeight fontWeight=FontWeight.w400,double fontSize=FontSize.regular}){
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'vazir',

      fontWeight: fontWeight
    );
  }
}