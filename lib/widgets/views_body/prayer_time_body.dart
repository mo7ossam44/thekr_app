import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/views/not_acceptable_prayer_time_view.dart';
import 'package:theker_app/views/sonan_view.dart';
import 'package:theker_app/widgets/month_widget.dart';
import 'package:theker_app/widgets/prayers_sliver_grid.dart';
import 'package:theker_app/widgets/sliver_hight_widget.dart';
import 'package:theker_app/widgets/prayer_hadith_container.dart';
import 'package:theker_app/widgets/custom_text_filed_Prayer.dart';
import 'package:theker_app/widgets/before_prayer_time_container.dart';
import 'package:theker_app/widgets/custom_container_prayer_time.dart';

class PrayerTimeViewBody extends StatelessWidget {
  const PrayerTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: CustomScrollView(
        slivers: [
          ConatantHightWidget(height: kHight1),
          CustomTextFiledPrayer(),
          ConatantHightWidget(height: kHight1),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    MonthWidget(date: '1447/1/10', monthName: 'مُحَرَّم'),
                    SizedBox(height: 10),
                    MonthWidget(date: '2025/7/5', monthName: 'يوليو'),
                  ],
                ),
                BeforePrayerTimeContainer(),
              ],
            ),
          ),
          ConatantHightWidget(height: kHight1),
          PrayerTimeHadethContainer(),
          ConatantHightWidget(height: kHight1),
          PrayersSliverGrid(),
          ConatantHightWidget(height: kHight1),
          CustomContainerInPrayerPage(
            text: 'السنن الرواتب',
            ontap: () => Navigator.of(context).pushNamed(SonanView.routeName),
            icon: Icons.arrow_forward_ios_sharp,
          ),
          ConatantHightWidget(height: kHight3),
          CustomContainerInPrayerPage(
            text: 'أوقات النهي عن الصلاة',
            ontap: () => Navigator.of(
              context,
            ).pushNamed(NotAcceptablePrayerTimeView.routeName),
            icon: Icons.arrow_forward_ios_sharp,
          ),
        ],
      ),
    );
  }
}
