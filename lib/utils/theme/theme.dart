import 'package:appbangiay/utils/theme/custom_themes/appbar_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/chip_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/text_field_theme.dart';
import 'package:appbangiay/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class HAppTheme{
HAppTheme._();

static ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  textTheme: HTextTheme.lightTextTheme,
  chipTheme: HChipTheme.lightChipTheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: HAppBarTheme.lightAppBarTheme,
  checkboxTheme: HCheckboxTheme.lightCheckboxTheme,
  bottomSheetTheme: HBottomSheetTheme.lightBottomSheetTheme,
  elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme, 
  outlinedButtonTheme: HOutlinedButtonTheme.lightOutlinedButtonTheme,
  inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme,
);
static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  textTheme: HTextTheme.darkTextTheme,
  chipTheme: HChipTheme.darkChipTheme,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: HAppBarTheme.darkAppBarTheme,
  checkboxTheme: HCheckboxTheme.darkCheckboxTheme,
  bottomSheetTheme: HBottomSheetTheme.darkBottomSheetTheme,
  elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme, 
  outlinedButtonTheme: HOutlinedButtonTheme.darkOutlinedButtonTheme,
  inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme,
);
}