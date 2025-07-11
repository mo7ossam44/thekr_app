import 'package:flutter/material.dart';
import 'package:theker_app/widgets/single_tab_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff141212),
      child: TabBar(
        dividerColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        tabs: [
          SingleTabWidget(text: 'العداد'),
          SingleTabWidget(text: 'القبلة'),
          SingleTabWidget(text: 'الزكاة'),
          SingleTabWidget(text: 'الصلاة'),
          SingleTabWidget(text: 'أذكار'),
        ],
      ),
    );
  }
}
