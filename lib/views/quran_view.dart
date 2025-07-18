import 'package:flutter/material.dart';
import 'package:theker_app/widgets/quran_view_body.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  static const String routeName = '/quran';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1A1A),
      body: const SafeArea(child: QuranViewBody()),
    );
  }
}
