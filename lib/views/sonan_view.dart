import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/views_body/sonan_view_body.dart';

class SonanView extends StatelessWidget {
  const SonanView({super.key});

  static const String routeName = 'sonan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'السنن الرواتب',
          style: TextStyle(fontFamily: kSecondaryFont, fontSize: kAppBarFontSize),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SonanViewBody(),
    );
  }
}
