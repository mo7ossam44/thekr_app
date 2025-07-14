import 'package:flutter/material.dart';

import 'package:theker_app/widgets/prayer_time_body.dart';

class PrayerTimeView extends StatelessWidget {
  const PrayerTimeView({super.key});

  static const String routeName = 'prayertime';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1C1A1A),
      body: SafeArea(child: PrayerTimeViewBody()),
    );
  }
}


