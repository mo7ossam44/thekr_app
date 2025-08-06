import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';

class JuzaSliverListBuilder extends StatelessWidget {
  const JuzaSliverListBuilder({super.key, required this.surah});

  final List<SurahModel> surah;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: surah.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? Color(0xff141212)
                : kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الجزء  ${surah[index].juzz}',
                style: TextStyle(color: kSecondaryColor),
              ),
              Text(
                surah[index].arabic,
                style: TextStyle(color: kSecondaryColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
