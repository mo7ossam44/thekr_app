import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/qibla/presentation/views/qibla_view.dart';
import 'package:theker_app/features/adad/presentation/views/azkar_count_view.dart';
import 'package:theker_app/features/prayers/presentation/views/prayer_time_view.dart';
import 'package:theker_app/features/zakat/presentation/views/zakat_view.dart';
import 'package:theker_app/features/home/presentation/views/widgets/single_tab_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xff141212)
            : kPrimaryColor,
        child: TabBar(
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          tabs: [
            SingleTabWidget(
              text: 'أذكار',
              ontap: () =>
                  Navigator.of(context).pushNamed(AzkarCountView.routeName),
            ),
            SingleTabWidget(
              text: 'الصلاة',
              ontap: () =>
                  Navigator.of(context).pushNamed(PrayerTimeView.routeName),
            ),
            SingleTabWidget(
              text: 'الزكاة',
              ontap: () => Navigator.of(context).pushNamed(ZakatView.routeName),
            ),
            SingleTabWidget(
              text: 'القبلة',
              ontap: () =>
                  Navigator.of(context).pushNamed(QiblahView.routeName),
            ),
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
