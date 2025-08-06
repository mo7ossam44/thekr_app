
import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';
import 'package:theker_app/features/quran/presentation/views/surah_view.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/surah_view_body.dart';

class SurahDrawer extends StatelessWidget {
  const SurahDrawer({super.key, required this.surah, required this.widget});

  final List<SurahModel> surah;
  final SurahView widget;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomScrollView(
          slivers: [
            ConatantHightWidget(height: 20),
            SliverToBoxAdapter(
              child: Text(
                'المصحف',
                style: TextStyle(
                  fontFamily: kSecondaryFont,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            ConatantHightWidget(height: 20),
            SliverList.builder(
              itemCount: surah.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SurahViewBody(
                          startPage: widget.startPage,
                          surahName: widget.surahName,
                        );
                      },
                    ),
                  ),
                  child: Card(
                    color: Color(0xff1C1A1A),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    child: ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'سورة ${surah[index].arabic}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: kSecondaryFont,
                            ),
                          ),
                          Text(
                            '${surah[index].place}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: kSecondaryFont,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '${surah[index].id}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: kSecondaryFont,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
