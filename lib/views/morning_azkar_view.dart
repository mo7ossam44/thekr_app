import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/views_body/morning_azkar_view_body.dart';

class MorningAzkarView extends StatelessWidget {
  const MorningAzkarView({super.key});

  static const String routeName = 'morning';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اذكار الصباح',
          style: TextStyle(fontFamily: kSecondaryFont),
        ),
      ),
      body: MorningAzkarViewBody(),
    );
  }
}
