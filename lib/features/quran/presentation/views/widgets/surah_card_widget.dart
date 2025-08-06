import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';
import 'package:theker_app/features/quran/presentation/views/surah_view.dart';

class SurahCardWidget extends StatelessWidget {
  const SurahCardWidget({super.key, required this.surahModel});

  final SurahModel surahModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SurahView(
              startPage: surahModel.startPage,
              surahName: surahModel.arabic,
            );
          },
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xff141212)
              : kPrimaryColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //? Number of Surah Container
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xff373535)
                    : Colors.white,
                // Color(0xff373535),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              width: 30,
              child: Text(
                '${surahModel.id}',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : kPrimaryColor,
                ),
              ),
            ),
            //? Name of Surah
            Text(
              surahModel.arabic,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'KFGQPC',
                fontSize: 30,
              ),
            ),
            //? Row of Surah info Container
            Container(
              padding: EdgeInsets.all(2),
              alignment: Alignment.center,
              width: 70,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xff373535)
                    : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Text(
                'الجزء  ${surahModel.juzz.toString()}',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : kPrimaryColor,
                  fontFamily: kSecondaryFont,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Container(
                //   padding: EdgeInsets.all(2),
                //   alignment: Alignment.center,
                //   width: 30,
                //   decoration: BoxDecoration(
                //     color: Theme.of(context).brightness == Brightness.dark
                //         ? Color(0xff373535)
                //         : Colors.white,
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(8),
                //       topRight: Radius.circular(8),
                //     ),
                //   ),
                //   child: Text(
                //     '${surahModel.aya}',
                //     style: TextStyle(
                //       color: Theme.of(context).brightness == Brightness.dark
                //           ? Colors.white
                //           : kPrimaryColor,
                //       fontFamily: kSecondaryFont,
                //       fontSize: 14,
                //     ),
                //   ),
                // ),