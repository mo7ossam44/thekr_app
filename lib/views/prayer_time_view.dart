import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

import 'package:theker_app/widgets/views_body/prayer_time_body.dart';

class PrayerTimeView extends StatelessWidget {
  const PrayerTimeView({super.key});

  static const String routeName = 'prayertime';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مواقيت الصلاة',
          style: TextStyle(fontFamily: kSecondaryFont),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Color(0xff1C1A1A),
      body: SafeArea(child: PrayerTimeViewBody()),
    );
  }
}
