import 'package:flutter/material.dart';

class SurahView extends StatelessWidget {
  const SurahView({super.key});

  static const String routeName = 'surah';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1A1A),
      body: SurahViewBody(),
    );
  }
}

class SurahViewBody extends StatelessWidget {
  const SurahViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView.builder(
        reverse: true,
        itemCount: 604,
        itemBuilder: (context, index) {
          int pageNumber = index + 1;
          String pageNumStr = pageNumber.toString().padLeft(3, '0');
          return Image.asset(
            'assets/quran_assets/quran_images_5/page$pageNumStr.png',
            color: Colors.white,
          );
        },
      ),
    );
  }
}
