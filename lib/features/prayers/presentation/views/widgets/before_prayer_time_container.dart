import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class BeforePrayerTimeContainer extends StatelessWidget {
  const BeforePrayerTimeContainer({
    super.key,
    required this.dayAr,
    required this.dayEn,
  });
  final String dayAr;
  final String dayEn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? kPrimaryColor
            : Color(0xff141212),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Text(
            dayAr,
            style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(
            dayEn,
            style: TextStyle(
              fontSize: 30,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.white
                  : kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: kSecondaryFont,
            ),
          ),
        ],
      ),
    );
  }
}
