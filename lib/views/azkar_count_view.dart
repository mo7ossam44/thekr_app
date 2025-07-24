import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/views_body/azkar_count_view_body.dart';

class AzkarCountView extends StatelessWidget {
  const AzkarCountView({super.key});

  static const String routeName = 'azkarCount';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العداد', style: TextStyle(fontFamily: kSecondaryFont)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Color(0xff1C1A1A),
      body: AzkarCountViewBody(),
    );
  }
}
