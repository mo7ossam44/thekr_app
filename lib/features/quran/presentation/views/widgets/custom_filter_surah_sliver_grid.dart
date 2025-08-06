import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/surah_card_widget.dart';

class CustomFilterListWithSliverGrid extends StatelessWidget {
  const CustomFilterListWithSliverGrid({super.key, required this.filterSurah});

  final List? filterSurah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Color(0xff1C1A1A)
          : kSecondaryColor,
      body: CustomScrollView(
        slivers: [
          ConatantHightWidget(height: 40),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return SurahCardWidget(surahModel: filterSurah![index]);
              }, childCount: filterSurah!.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 40,
                crossAxisSpacing: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
