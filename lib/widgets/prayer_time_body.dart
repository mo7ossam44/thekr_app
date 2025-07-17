import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/prayer_time_model.dart';
import 'package:theker_app/services/prayer_time_service.dart';
import 'package:theker_app/widgets/before_prayer_time_container.dart';
import 'package:theker_app/widgets/custom_app_bar.dart';
import 'package:theker_app/widgets/custom_column_prayers.dart';
import 'package:theker_app/widgets/custom_text_filed_Prayer.dart';
import 'package:theker_app/widgets/month_widget.dart';


class PrayerTimeViewBody extends StatelessWidget {
  const PrayerTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          CustomAppBarWidget(text: 'مواقيت الصلاة'),
          SizedBox(height: 20),
          CustomTextFiledPrayer(),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BeforePrayerTimeContainer(),
              Column(
                children: [
                  MonthWidget(date: '1447/1/10', monthName: 'مُحَرَّم'),
                  SizedBox(height: 10),
                  MonthWidget(date: '2025/7/5', monthName: 'يوليو'),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          PrayerTimeHadethContainer(),
          SizedBox(height: 30),
          SizedBox(height: 50,child: CustomColumnPrayers()),
        ],
      ),
    );
  }
}

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
