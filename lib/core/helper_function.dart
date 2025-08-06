import 'package:flutter/material.dart';
import 'package:theker_app/features/zakat/presentation/views/feter_zakat_view.dart';
import 'package:theker_app/features/home/presentation/views/home_view.dart';
import 'package:theker_app/features/qibla/presentation/views/qibla_view.dart';
import 'package:theker_app/features/quran/presentation/views/quran_view.dart';
import 'package:theker_app/features/prayers/presentation/views/sonan_view.dart';
import 'package:theker_app/features/splash/views/splash_view.dart';
import 'package:theker_app/features/prayers/presentation/views/prayer_time_view.dart';
import 'package:theker_app/features/onboarding/views/on_boarding_view.dart';
import 'package:theker_app/features/adad/presentation/views/azkar_count_view.dart';
import 'package:theker_app/features/azkar/presentation/views/sleep_azkar_view.dart';
import 'package:theker_app/features/azkar/presentation/views/morning_azkar_view.dart';
import 'package:theker_app/features/azkar/presentation/views/evening_azkar_view.dart';
import 'package:theker_app/features/azkar/presentation/views/wake_up_azkar_view.dart';
import 'package:theker_app/features/azkar/presentation/views/prayer_later_azkar_view.dart';
import 'package:theker_app/features/prayers/presentation/views/not_acceptable_prayer_time_view.dart';
import 'package:theker_app/features/zakat/presentation/views/zakat_view.dart';

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
    case NotAcceptablePrayerTimeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const NotAcceptablePrayerTimeView(),
      );
    case PrayerLaterAzkarView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PrayerLaterAzkarView(),
      );
    case SleepAzkarView.routeName:
      return MaterialPageRoute(builder: (context) => const SleepAzkarView());
    case WakeUpAzkarView.routeName:
      return MaterialPageRoute(builder: (context) => const WakeUpAzkarView());
    case QiblahView.routeName:
      return MaterialPageRoute(builder: (context) => const QiblahView());
    case ZakatView.routeName:
      return MaterialPageRoute(builder: (context) => const ZakatView());
    case FeterZakatView.routeName:
      return MaterialPageRoute(builder: (context) => const FeterZakatView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
