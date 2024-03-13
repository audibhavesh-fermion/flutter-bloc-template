import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_project/core/bloc/app_event.dart';
import 'package:flutter_template_project/core/bloc/app_state.dart';
import 'package:flutter_template_project/core/management/theme/bloc/theme_event.dart';
import 'package:flutter_template_project/core/management/theme/bloc/theme_state.dart';
import 'package:flutter_template_project/core/management/theme/theme_manager.dart';

class ThemeBloc extends Bloc<AppEvent, AppState> {
  ThemeBloc()
      : super(ThemeState(
            themeData: ThemeManager.appThemeData[ThemeManager.theme])) {
    on<ThemeEvent>(_handleThemeEvent);
  }

  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {}

  _handleThemeEvent(ThemeEvent event, Emitter<AppState> emit) {
    emit(ThemeState(
      themeData: ThemeManager.appThemeData[event.appTheme],
    ));
  }
}
