import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/views_body/evening_azkar_view_body.dart';

class EveningAzkarView extends StatelessWidget {
  const EveningAzkarView({super.key});

  static const String routeName = 'evening';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أذكار المساء',
          style: TextStyle(fontFamily: kSecondaryFont),
        ),
      ),
      body: EveningAzkarViewBody(),
    );
  }
}
