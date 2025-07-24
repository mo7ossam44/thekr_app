import 'package:flutter/material.dart';
import 'package:theker_app/widgets/views_body/surah_view_body.dart';

class SurahView extends StatelessWidget {
  const SurahView({
    super.key,
    required this.startPage,
    required this.surahName,
  });

  static const String routeName = 'surah';
  final int startPage;
  final String surahName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1A1A),
      body: SurahViewBody(startPage: startPage, surahName: surahName),
    );
  }
}
