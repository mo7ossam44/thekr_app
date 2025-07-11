import 'package:flutter/material.dart';
import 'package:theker_app/models/category_model.dart';
import 'package:theker_app/views/azkar_view.dart';
import 'package:theker_app/views/prayer_time_view.dart';
import 'package:theker_app/views/quran_view.dart';
import 'package:theker_app/widgets/app_bar_home_view.dart';
import 'package:theker_app/widgets/custom_container.dart';
import 'package:theker_app/widgets/grid_view_builder.dart';
import 'package:theker_app/widgets/tab_bar_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  final List<CategoryModel> categoryModel = const [
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomAppBarHomeView(),
        ),
        SizedBox(height: 20),
        TabBarWidget(),
        SizedBox(height: 20),
        CustomContainer(text: 'المصحف'),
        SizedBox(height: 10),
        GridViewBuilder(categoryModel: categoryModel),
      ],
    );
  }
}
