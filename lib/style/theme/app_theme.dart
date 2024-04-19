import 'package:flutter/material.dart';
import 'package:grocery_store_app/style/colors/colors_dark.dart';
import 'package:grocery_store_app/style/colors/colors_light.dart';
import 'package:grocery_store_app/style/fonts/font_family_helper.dart';
import 'package:grocery_store_app/style/theme/assets_extension.dart';
import 'package:grocery_store_app/style/theme/color_extension.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    useMaterial3: true,
  );
}
