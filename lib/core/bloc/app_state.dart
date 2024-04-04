import 'package:flutter/material.dart';

@immutable
class AppState {
  List<Object> get props => [];
}

class LoadingState extends AppState {
  final bool isLoading;

  LoadingState({required this.isLoading});
}

class SuccessState extends AppState {}

class ErrorState extends AppState {}

class FailedState extends AppState {}
