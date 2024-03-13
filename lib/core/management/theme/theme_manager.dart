import 'package:flutter/material.dart';
import 'package:flutter_template_project/res/app_colors.dart';

enum AppTheme { Light, Dark }

class ThemeManager {
  static AppTheme theme = AppTheme.Light;

  static final appThemeData = {
    AppTheme.Light: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        primarySwatch: AppColors.primaryColorSwatch,
        textTheme: TextTheme(bodyLarge: TextStyle(color: AppColors.textColor))),
    AppTheme.Dark: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        primarySwatch: AppColors.primaryColorSwatch,
        textTheme: TextTheme(bodyLarge: TextStyle(color: AppColors.textColor)))
  };
}
