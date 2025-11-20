import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lango/config/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
  });
  final String lable;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: lable,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: CustomColors.mutedForground),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
