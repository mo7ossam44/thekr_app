import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class PrayerTimeHadethContainer extends StatelessWidget {
  const PrayerTimeHadethContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xff141212)
              : Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          kFajrHadth,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : kPrimaryColor,
            fontFamily: kSecondaryFont,
            fontWeight: FontWeight.bold,
            fontSize: 17,
            height: 1.7,
          ),
        ),
      ),
    );
  }
}
