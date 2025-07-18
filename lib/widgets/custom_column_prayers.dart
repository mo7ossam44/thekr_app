import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/prayer_time_model.dart';

class CustomColumnPrayers extends StatefulWidget {
  const CustomColumnPrayers({super.key});

  @override
  State<CustomColumnPrayers> createState() => _CustomColumnPrayersState();
}

class _CustomColumnPrayersState extends State<CustomColumnPrayers> {
  getUser() {
    List numbers = [1, 2, 3, 4, 5, 6, 7];
    List numbersAfter = numbers.map((e) => e * 2).toList();
    log(numbersAfter.toString());
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) {
        return Card();
      },
    );
  }
}

class PrayerItem extends StatelessWidget {
  const PrayerItem({super.key, required this.prayerTimeModel});

  final PrayerTimeModel prayerTimeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Fajr',
            style: TextStyle(
              color: Color(0xff007D45),
              fontFamily: kSecondaryFont,
              fontSize: 25,
            ),
          ),
          //* prayer time
          Text(
            prayerTimeModel.fajr,
            style: TextStyle(
              color: Color(0xff007D45),
              fontFamily: kSecondaryFont,
              fontSize: 25,
            ),
          ),
          //* prayer Iqama (optional)
        ],
      ),
    );
  }
}

// Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         PrayerRowWidget(
//           prayer1: 'الفجر',
//           prayerTime1: '4:18ص',
//           prayer2: 'الشروق',
//           prayerTime2: '6:08ص',
//         ),
//         SizedBox(height: 20),
//         PrayerRowWidget(
//           prayer1: 'الفجر',
//           prayerTime1: '4:18ص',
//           prayer2: 'الشروق',
//           prayerTime2: '6:08ص',
//         ),
//         SizedBox(height: 20),
//         PrayerRowWidget(
//           prayer1: 'الفجر',
//           prayerTime1: '4:18ص',
//           prayer2: 'الشروق',
//           prayerTime2: '6:08ص',
//         ),
//       ],
//
