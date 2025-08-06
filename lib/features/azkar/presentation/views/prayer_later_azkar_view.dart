import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/prayer_later_azkar_body.dart';

class PrayerLaterAzkarView extends StatelessWidget {
  const PrayerLaterAzkarView({super.key});

  static const String routeName = 'prayerLaterAzkar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أذكار بعد الصلاة',
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: kAppBarFontSize,
          ),
        ),
        // elevation: 0,
        // backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      // backgroundColor: Color(0xff1C1A1A),
      body: PrayerLaterAzkarViewBody(),
    );
  }
}
