import 'package:flutter/material.dart';
import 'package:theker_app/widgets/custom_app_bar.dart';

class PrayerTimeView extends StatelessWidget {
  const PrayerTimeView({super.key});

  static const String routeName = 'prayertime';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBarWidget(),
    );
  }
}