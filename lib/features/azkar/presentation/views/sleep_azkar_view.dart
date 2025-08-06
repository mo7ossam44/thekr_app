import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/sleep_azkar_view_body.dart';

class SleepAzkarView extends StatelessWidget {
  const SleepAzkarView({super.key});

  static const String routeName = 'sleep';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أذكار النوم',
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
      body: SleepAzkarViewBody(),
    );
  }
}

