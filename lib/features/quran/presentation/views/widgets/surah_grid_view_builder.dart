import 'package:flutter/material.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/surah_card_widget.dart';

class SurahSliverGridBuilder extends StatelessWidget {
  const SurahSliverGridBuilder({super.key, required this.surah});

  final List<SurahModel> surah;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      sliver: SliverGrid.builder(
        itemCount: surah.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
        ),
        itemBuilder: (context, index) {
          return SurahCardWidget(surahModel: surah[index]);
        },
      ),
    );
  }
}
