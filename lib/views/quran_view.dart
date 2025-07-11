import 'package:flutter/material.dart';
import 'package:theker_app/widgets/custom_text_filed.dart';
import 'package:theker_app/widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  static const String routeName = '/quran';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: CustomTextFiledAppBar(),
      ),
      backgroundColor: const Color(0xff1C1A1A),
      body: const SafeArea(child: QuranViewBody()),
    );
  }
}
