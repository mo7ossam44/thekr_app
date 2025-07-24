import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/surah_model.dart';
import 'package:theker_app/services/surah_service.dart';
import 'package:theker_app/widgets/custom_quran_categories_container.dart';
import 'package:theker_app/widgets/surah_view_parts/custom_text_filed.dart';
import 'package:theker_app/widgets/ketma_container_widget.dart';
import 'package:theker_app/widgets/sliver_hight_widget.dart';
import 'package:theker_app/widgets/surah_view_parts/surah_grid_view_builder.dart';

class QuranViewBody extends StatefulWidget {
  const QuranViewBody({super.key});

  @override
  State<QuranViewBody> createState() => _QuranViewBodyState();
}

class _QuranViewBodyState extends State<QuranViewBody> {
  List<SurahModel> surah = [];
  @override
  void initState() {
    super.initState();
    getSurahData();
  }

  Future<void> getSurahData() async {
    surah = await QuranService().getSurah();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CustomTextFiledAppBar(surah: surah),
        ConatantHightWidget(height: kHight2),
        KetmaContainerWidget(),
        ConatantHightWidget(height: kHight2),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomQuranCategoriesContainer(text: 'السور'),
              CustomQuranCategoriesContainer(text: 'الاجزاء'),
              CustomQuranCategoriesContainer(text: 'الاحزاب'),
            ],
          ),
        ),
        ConatantHightWidget(height: kHight2),
        SurahSliverGridBuilder(surah: surah),
      ],
    );
  }
}
