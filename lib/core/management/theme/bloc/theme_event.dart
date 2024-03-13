import 'package:flutter_template_project/core/bloc/app_event.dart';
import 'package:flutter_template_project/core/management/theme/theme_manager.dart';

class ThemeEvent extends AppEvent {
  final AppTheme appTheme;

  ThemeEvent({required this.appTheme});
}
