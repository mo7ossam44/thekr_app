import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/app_theme_cubit/theme_states.dart';

enum ThemeModeState { dark, light, system }

class AppCubit extends Cubit<ThemeStates> {
  AppCubit() : super(ThemeIntialState());

  static AppCubit get(context) => BlocProvider.of(context);

  ThemeModeState currenttheme = ThemeModeState.system;

  void selectTheme(ThemeModeState theme) {
    currenttheme = theme;
    emit(ThemeChangedState());
  }

  ThemeMode getTheme() {
    switch (currenttheme) {
      case ThemeModeState.dark:
        return ThemeMode.dark;
      case ThemeModeState.light:
        return ThemeMode.light;
      case ThemeModeState.system:
        return ThemeMode.system;
    }
  }
}
