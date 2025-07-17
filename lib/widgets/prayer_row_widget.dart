import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class PrayerRowWidget extends StatelessWidget {
  const PrayerRowWidget({
    super.key,
    required this.prayer1,
    required this.prayerTime1,
    required this.prayer2,
    required this.prayerTime2,
  });

  final String prayer1, prayerTime1, prayer2, prayerTime2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            color: Color(0xff373535),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* prayer name
              Text(
                prayer1,
                style: TextStyle(
                  color: Color(0xff007D45),
                  fontFamily: kSecondaryFont,
                  fontSize: 25,
                ),
              ),
              //* prayer time
              Text(
                prayerTime1,
                style: TextStyle(
                  color: Color(0xff007D45),
                  fontFamily: kSecondaryFont,
                  fontSize: 25,
                ),
              ),
              //* prayer Iqama (optional)
            ],
          ),
        ),
        Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            color: Color(0xff373535),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* prayer name
              Text(
                prayer2,
                style: TextStyle(
                  color: Color(0xff007D45),
                  fontFamily: kSecondaryFont,
                  fontSize: 25,
                ),
              ),
              //* prayer time
              Text(
                prayerTime2,
                style: TextStyle(
                  color: Color(0xff007D45),
                  fontFamily: kSecondaryFont,
                  fontSize: 25,
                ),
              ),
              //* prayer Iqama (optional)
            ],
          ),
        ),
      ],
    );
  }
}
