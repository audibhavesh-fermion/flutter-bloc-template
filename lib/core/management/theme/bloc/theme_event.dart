import 'package:flutter/material.dart';
import 'package:flutter_template_project/core/bloc/app_event.dart';

class ThemeEvent extends AppEvent {
  final ThemeMode mode;

  ThemeEvent({required this.mode});
}
