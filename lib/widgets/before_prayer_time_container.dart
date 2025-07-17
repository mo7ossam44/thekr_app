import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class BeforePrayerTimeContainer extends StatelessWidget {
  const BeforePrayerTimeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xff141212),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 10),
          Text(
            'الفجر  18 : 4',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff007D45),
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(
            '1:28:06',
            style: TextStyle(
              fontSize: 40,
              color: Color(0xff007D45),
              fontWeight: FontWeight.bold,
              fontFamily: kSecondaryFont,
            ),
          ),
        ],
      ),
    );
  }
}

