import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class SurahViewBody extends StatelessWidget {
  const SurahViewBody({
    super.key,
    required this.startPage,
    required this.surahName,
  });

  final int startPage;
  final String surahName;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(initialPage: startPage - 1),
      itemCount: pageImagePath.length,
      itemBuilder: (context, index) {
        return startPage == 1 && startPage == 2
            ? ListView(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 180),
                  Image.asset(
                    'assets/quran_assets/quran_images/${pageImagePath[index]}',
                    // ignore: deprecated_member_use
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Color(0xff1C1A1A)
                        : Colors.white.withOpacity(0.6),
                    height: MediaQuery.of(context).size.height * 0.40,
                    fit: BoxFit.fill,
                  ),
                ],
              )
            : ListView(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/quran_assets/quran_images/${pageImagePath[index]}',
                    // ignore: deprecated_member_use
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white.withOpacity(0.6)
                        : Color(0xff1C1A1A),
                    height: MediaQuery.of(context).size.height * 0.88,
                    fit: BoxFit.fill,
                  ),
                ],
              );
      },
    );
  }
}