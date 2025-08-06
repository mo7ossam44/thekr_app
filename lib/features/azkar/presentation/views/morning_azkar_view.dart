import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/morning_azkar_view_body.dart';

class MorningAzkarView extends StatelessWidget {
  const MorningAzkarView({super.key});

  static const String routeName = 'morning';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أذكار الصباح',
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
      body: MorningAzkarViewBody(),
    );
  }
}
