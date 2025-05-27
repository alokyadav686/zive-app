import 'package:flutter/material.dart';
import 'package:zive/utils/theme/custom_themes/appbar_theme.dart';
import 'package:zive/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:zive/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:zive/utils/theme/custom_themes/chip_theme.dart';
import 'package:zive/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:zive/utils/theme/custom_themes/text_field_theme.dart';
import 'package:zive/utils/theme/custom_themes/text_theme.dart';

class ZiveTheme{
  ZiveTheme._();

  //light theme

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: ZiveAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: ZiveBottomSheetTheme.lightbottomSheetTheme,
    checkboxTheme: ZiveCheckboxTheme.lightCheckboxTheme,
    chipTheme: ZiveChipTheme.lightChipTheme,
    elevatedButtonTheme: ZiveElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: ZiveTextFormFieldTheme.lightInputDecorationTheme,
    textTheme: ZiveTextTheme.lightTextTheme,
    

  );

  // dark theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: ZiveAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: ZiveBottomSheetTheme.darkbottomSheetTheme,
    checkboxTheme: ZiveCheckboxTheme.darkCheckboxTheme,
    chipTheme: ZiveChipTheme.darkChipTheme,
    elevatedButtonTheme: ZiveElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ZiveTextFormFieldTheme.darkInputDecorationTheme,
    textTheme: ZiveTextTheme.darkTextTheme,

  );
}