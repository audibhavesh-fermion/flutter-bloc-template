import 'package:flutter/material.dart';
import 'package:flutter_template_project/core/management/theme/theme_manager.dart';

class AppColors {
  //Hex Colors

  //Light
  static const String primaryColorHexLight = "";
  static const String backgroundColorHexLight = "";
  static const String textColorHexLight = "";

  //Dark
  static const String primaryColorHexDark = "";
  static const String backgroundColorHexDark = "";
  static const String textColorHexDark = "";

  static Color primaryColor = getThemeBaseColor(
      lightColorHex: primaryColorHexLight, darkColorHex: primaryColorHexDark);

  static MaterialColor primaryColorSwatch = createPrimarySwatch(primaryColor);

  static Color backgroundColor = getThemeBaseColor(
      lightColorHex: backgroundColorHexLight,
      darkColorHex: backgroundColorHexDark);

  static Color textColor = getThemeBaseColor(
      lightColorHex: textColorHexLight, darkColorHex: textColorHexDark);

  static int _getColorIntFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  static Color getColor(String colorHex) {
    return Color(_getColorIntFromHex(colorHex));
  }

  static Color getThemeBaseColor(
      {required String lightColorHex, required String darkColorHex}) {
    return ThemeManager.theme == AppTheme.Light
        ? getColor(lightColorHex)
        : getColor(darkColorHex);
  }

  static MaterialColor createPrimarySwatch(Color color) {
    // You can adjust the number of shades (from 50 to 900) based on your preference
    Map<int, Color> colorMap = {
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color,
    };

    return MaterialColor(color.value, colorMap);
  }
}
