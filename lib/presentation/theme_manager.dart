import 'package:flutter/material.dart';
import 'package:to_do/presentation/color_manger.dart';
import 'package:to_do/presentation/font_manger.dart';
import 'package:to_do/presentation/styles_manger.dart';
import 'package:to_do/presentation/values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManger.primary,
    primaryColorLight: ColorManger.lightprimary,
    primaryColorDark: ColorManger.darkprimary,
    disabledColor: ColorManger.gray1,
    splashColor: ColorManger.white,

    //cardview theme
    cardTheme: CardTheme(
      color: ColorManger.white,
      shadowColor: ColorManger.gray,
      elevation: AppSize.s4,
    ),

    //app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManger.primary,
        elevation: AppSize.s12,
        shadowColor: ColorManger.lightprimary,
        titleTextStyle:
            getRegularStyle(fontsize: fontSize.s16, color: ColorManger.white)),

    //button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManger.gray1,
        buttonColor: ColorManger.primary,
        splashColor: ColorManger.lightprimary),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle:
              getRegularStyle(fontsize: fontSize.s16, color: ColorManger.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12))),
    ),

    //text theme
    textTheme: TextTheme(
      headlineLarge:
          getSemiBoldStyle(fontsize: fontSize.s20, color: ColorManger.darkGray),

    ),
    //input decoration theme (text form filed )
  );
}
