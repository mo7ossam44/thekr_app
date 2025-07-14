
import 'package:flutter/material.dart';

import 'package:theker_app/widgets/custom_app_bar.dart';
import 'package:theker_app/widgets/custom_text_filed_Prayer.dart';

class PrayerTimeViewBody extends StatelessWidget {
  const PrayerTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          CustomAppBarWidget(text: 'مواقيت الصلاة'),
          CustomTextFiledPrayer(),
        ],
      ),
    );
  }
}