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
        return ListView(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(height: 50),
            Image.asset(
              'assets/quran_assets/quran_images/${pageImagePath[index]}',
              color: Colors.white.withOpacity(0.6),
              height: MediaQuery.of(context).size.height * 0.88,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    surahName,
                    style: TextStyle(
                      fontFamily: kSecondaryFont,
                      fontSize: 20,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    'الصفحة ${index + 1}',
                    style: TextStyle(
                      fontFamily: kSecondaryFont,
                      fontSize: 20,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
