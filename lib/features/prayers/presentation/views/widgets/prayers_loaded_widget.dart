import 'package:flutter/material.dart';
import 'package:theker_app/features/prayers/presentation/views_model/prayer_time_model.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/before_prayer_time_container.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/month_widget.dart';

class PrayerLoadedStateWidget extends StatelessWidget {
  const PrayerLoadedStateWidget({
    super.key,
    required this.prayerTimeModel,
    required this.formatetedCurrentDate,
    required this.monthName,
  });

  final PrayerTimeModel? prayerTimeModel;
  final String formatetedCurrentDate;
  final String monthName;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              MonthWidget(
                date: prayerTimeModel!.hijriDate.date,
                monthName: prayerTimeModel!.hijriDate.month.ar,
              ),
              SizedBox(height: 10),
              MonthWidget(
                date: formatetedCurrentDate,
                monthName: monthName,
              ),
            ],
          ),
          BeforePrayerTimeContainer(
            dayAr: prayerTimeModel!.hijriDate.weekday.ar,
            dayEn: prayerTimeModel!.hijriDate.weekday.en,
          ),
        ],
      ),
    );
  }
}
