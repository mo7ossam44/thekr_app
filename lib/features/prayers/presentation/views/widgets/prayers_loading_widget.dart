import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/before_prayer_time_container.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/month_widget.dart';

class PrayerLoadingStateWidget extends StatelessWidget {
  const PrayerLoadingStateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Skeletonizer(
        enabled: true,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MonthWidget(
                    date: '00-00-0000',
                    monthName: '--------',
                  ),
                  SizedBox(height: 10),
                  MonthWidget(
                    date: '00-00-0000',
                    monthName: '--------',
                  ),
                ],
              ),
              BeforePrayerTimeContainer(
                dayAr: '--------',
                dayEn: '--------',
              ),
            ],
          ),
        ),
      ),
    );
  }
}