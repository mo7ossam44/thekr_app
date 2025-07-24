import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class PrayersSliverGrid extends StatefulWidget {
  const PrayersSliverGrid({super.key});

  @override
  State<PrayersSliverGrid> createState() => _CustomColumnPrayersState();
}

class _CustomColumnPrayersState extends State<PrayersSliverGrid> {
  List<String> prayers = const [
    'الفجر',
    'الشروق',
    'الظهر',
    'العصر',
    'المغرب',
    'العشاء',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: prayers.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xff373535),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                prayers[index],
                style: TextStyle(fontFamily: kSecondaryFont, fontSize: 18),
              ),
              Text(
                '6:08ص',
                style: TextStyle(
                  fontFamily: kSecondaryFont,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'الاقامة 4:43',
                style: TextStyle(fontFamily: kSecondaryFont, fontSize: 15),
              ),
            ],
          ),
        );
      },
    );
  }
}
