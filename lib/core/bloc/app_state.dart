import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_project/core/bloc/app_event.dart';

@immutable
abstract class AppState {
  List<Object> get props => [];
}

class LoadingState extends AppState {
  final bool isLoading;

  LoadingState({required this.isLoading});
}

class SuccessState extends AppState {
}

class ErrorState extends AppState {}

class FailedState extends AppState {}
