import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lango/config/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.lable,this.prefixIcon,this.suffixIcon});
final String lable;
final Widget? prefixIcon;
final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          labelText: lable,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: CustomColors.mutedForground),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon
        ),

      ),
    );
  }
}
