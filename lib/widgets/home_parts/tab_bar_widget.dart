import 'package:flutter/material.dart';
import 'package:theker_app/views/azkar_count_view.dart';
import 'package:theker_app/views/prayer_time_view.dart';
import 'package:theker_app/widgets/home_parts/single_tab_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Color(0xff141212),
        child: TabBar(
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          tabs: [
            SingleTabWidget(text: 'أذكار', ontap: () => Card()),
            SingleTabWidget(
              text: 'الصلاة',
              ontap: () =>
                  Navigator.of(context).pushNamed(PrayerTimeView.routeName),
            ),
            SingleTabWidget(text: 'الزكاة', ontap: () => Card()),
            SingleTabWidget(text: 'القبلة', ontap: () => Card()),
            SingleTabWidget(
              text: 'العداد',
              ontap: () =>
                  Navigator.of(context).pushNamed(AzkarCountView.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
