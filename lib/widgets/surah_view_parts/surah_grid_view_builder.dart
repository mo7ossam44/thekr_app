import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:theker_app/models/surah_model.dart';
import 'package:theker_app/widgets/surah_view_parts/surah_card_widget.dart';

class SurahSliverGridBuilder extends StatelessWidget {
  const SurahSliverGridBuilder({super.key, required this.surah});

  final List<SurahModel> surah;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 1000,
        child: LiveGrid(
          padding: EdgeInsets.symmetric(horizontal: 20),
          showItemInterval: const Duration(milliseconds: 100),
          showItemDuration: const Duration(milliseconds: 250),
          itemCount: surah.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index, animation) {
            return FadeTransition(
              opacity: animation,
              child: SurahCardWidget(surahModel: surah[index]),
            );
          },
        ),
      ),
    );
  }
}

      // sliver: SliverGrid(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     mainAxisSpacing: 40,
      //     crossAxisSpacing: 40,
      //   ),
      //   delegate: SliverChildBuilderDelegate((context, index) {
      //     return SurahCardWidget(surahModel: surah[index]);
      //   }, childCount: surah.length),
        
      // ),