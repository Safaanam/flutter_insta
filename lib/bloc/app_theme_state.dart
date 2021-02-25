

//import 'package:equatable/equatable.dart';
//import 'package:flutter/material.dart';
part of 'app_theme_bloc.dart';

class AppThemeState extends Equatable{
  final ThemeData theme;
  const AppThemeState({this.theme});

  @override
  List<Object> get props => [theme];
}