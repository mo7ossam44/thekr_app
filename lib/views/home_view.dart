import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/category_model.dart';
import 'package:theker_app/views/azkar_view.dart';
import 'package:theker_app/views/prayer_time_view.dart';
import 'package:theker_app/views/quran_view.dart';
import 'package:theker_app/widgets/grid_view_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CategoryModel> categoryModel = [
    CategoryModel(
      targetPage: PrayerTimeView(),
      image: 'assets/images/time.png',
      name: 'أذكار بعد الصلاة',
    ),
    CategoryModel(
      targetPage: AzkarView(),
      image: 'assets/images/praying.png',
      name: 'أذكاري',
    ),
    CategoryModel(
      targetPage: QuranView(),
      image: 'assets/images/calendar.png',
      name: 'أذكار النوم',
    ),
    CategoryModel(
      targetPage: AzkarView(),
      image: 'assets/images/halal.png',
      name: 'أذكار الصباح',
    ),
    CategoryModel(
      targetPage: AzkarView(),
      image: 'assets/images/qibla.png',
      name: 'أذكار الإستيقاظ',
    ),
    CategoryModel(
      targetPage: AzkarView(),
      image: 'assets/images/infaq.png',
      name: 'أذكار المساء',
    ),
    CategoryModel(
      targetPage: AzkarView(),
      image: 'assets/images/infaq.png',
      name: 'أدعية شاملة',
    ),
    CategoryModel(
      targetPage: AzkarView(),
      image: 'assets/images/halal.png',
      name: 'الرقية الشرعية',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1A1A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            // MohamedHossamWidget(),
            SizedBox(height: 30),
            // TimeContainerWidget(),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xff222020),
                borderRadius: BorderRadius.circular(16),
                border: Border(
                  bottom: BorderSide(color: Color(0xff00E37D),),
                  right: BorderSide(color: Color(0xff00E37D)),
                  top: BorderSide(color: Color(0xff00E37D)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'المصحف',
                      style: TextStyle(
                        fontFamily: kSecondaryFont,
                        color: Color(0xff007D45),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            GridViewBuilder(categoryModel: categoryModel),
          ],
        ),
      ),
    );
  }
}
