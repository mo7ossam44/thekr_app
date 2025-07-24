import 'package:flutter/material.dart';
import 'package:theker_app/views/home_view.dart';
import 'package:theker_app/views/quran_view.dart';
import 'package:theker_app/views/single_zeker_view.dart';
import 'package:theker_app/views/sonan_view.dart';
import 'package:theker_app/views/surah_view.dart';
import 'package:theker_app/views/splash_view.dart';
import 'package:theker_app/views/prayer_time_view.dart';
import 'package:theker_app/views/on_boarding_view.dart';
import 'package:theker_app/views/azkar_count_view.dart';
import 'package:theker_app/views/morning_azkar_view.dart';
import 'package:theker_app/views/evening_azkar_view.dart';

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
    case PrayerTimeView.routeName:
      return MaterialPageRoute(builder: (context) => const PrayerTimeView());
    case MorningAzkarView.routeName:
      return MaterialPageRoute(builder: (context) => const MorningAzkarView());
    case EveningAzkarView.routeName:
      return MaterialPageRoute(builder: (context) => const EveningAzkarView());
    case SonanView.routeName:
      return MaterialPageRoute(builder: (context) => const SonanView());
    case AzkarCountView.routeName:
      return MaterialPageRoute(builder: (context) => const AzkarCountView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
