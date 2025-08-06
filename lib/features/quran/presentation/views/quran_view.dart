import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  static const String routeName = '/quran';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'المصحف',
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
      // backgroundColor: const Color(0xff1C1A1A),
      body: const SafeArea(child: QuranViewBody()),
    );
  }
}
