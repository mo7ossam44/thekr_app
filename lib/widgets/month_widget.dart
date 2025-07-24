import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class MonthWidget extends StatelessWidget {
  const MonthWidget({super.key, required this.date, required this.monthName});

  final String date;
  final String monthName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xff141212),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            monthName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(date, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
