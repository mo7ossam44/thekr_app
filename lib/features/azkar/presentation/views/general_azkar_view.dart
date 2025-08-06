import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/genaral_azkar_view_body.dart';

class GeneralAzkarView extends StatelessWidget {
  const GeneralAzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أدعية شاملة',
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: kAppBarFontSize,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: GeneralAzkarViewBody(),
    );
  }
}
