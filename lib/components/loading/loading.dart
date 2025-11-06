import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lango/config/constants.dart';


Widget customLoading({Color color=CustomColors.primary}){
  return SpinKitSpinningLines(color: color,size: 40,);
}