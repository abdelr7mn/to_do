import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do/presentation/font_manger.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double fontsize = fontSize.s12, required Color color}) {
  return _getTextStyle(fontsize, fontWightManager.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontsize = fontSize.s12, required Color color}) {
  return _getTextStyle(fontsize, fontWightManager.medium, color);
}

// light style

TextStyle getLightStyle(
    {double fontsize = fontSize.s12, required Color color}) {
  return _getTextStyle(fontsize, fontWightManager.light, color);
}

// bold style

TextStyle getBoldStyle({double fontsize = fontSize.s12, required Color color}) {
  return _getTextStyle(fontsize, fontWightManager.bold, color);
}

// semiBold style

TextStyle getSemiBoldStyle(
    {double fontsize = fontSize.s12, required Color color}) {
  return _getTextStyle(fontsize, fontWightManager.semiBold, color);
}
