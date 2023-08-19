import 'package:arodion/src/utils/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.LightTextTheme,
    // appBarTheme: TAppBarTheme.lightAppBarTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonThene,
    // outlinedButtonTheme: TOutlineaButtonTheme.lightOutlinedButtonThene,
    // inputDecorationTheme: TTextformfieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    // appBarTheme: TAppBarTheme.darkAppBarTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonThene,
    // outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonThene,
    //inputDecorationTheme: TTextformFieldTheme.darkInputDecorationTheme,
  );
}
