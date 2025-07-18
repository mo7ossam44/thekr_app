


import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class PrayerTimeHadethContainer extends StatelessWidget {
  const PrayerTimeHadethContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xff141212),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        kFajrHadth,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          color: Colors.white,
          fontFamily: kSecondaryFont,
          fontWeight: FontWeight.bold,
          fontSize: 17,
          height: 1.7,
        ),
      ),
    );
  }
}
