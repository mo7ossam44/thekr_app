import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:theker_app/views/home_view.dart';
import 'package:theker_app/views/on_boarding_view.dart';
import 'package:theker_app/views/quran_view.dart';
import 'package:theker_app/views/splash_view.dart';
import 'package:theker_app/views/surah_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case QuranView.routeName:
      return MaterialPageRoute(builder: (context) => const QuranView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case SurahView.routeName:
      return MaterialPageRoute(builder: (context) => const SurahView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
