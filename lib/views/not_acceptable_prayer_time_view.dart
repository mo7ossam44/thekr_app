import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/views_body/not_acceptable_prayer_body.dart';

class NotAcceptablePrayerTimeView extends StatelessWidget {
  const NotAcceptablePrayerTimeView({super.key});

  static const String routeName = 'notAccept';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1A1A),
      appBar: AppBar(
        title: const Text(
          'اوقات النهي عن الصلاة',
          style: TextStyle(fontFamily: kSecondaryFont),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: const NotAcceptablePrayerTimeViewBody(),
    );
  }
}

