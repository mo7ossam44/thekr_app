import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';
import 'package:theker_app/features/quran/data/surah_service.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/ketma_container_widget.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/juza_sliver_list_builder.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/custom_quran_categories_container.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/custom_text_filed.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/surah_grid_view_builder.dart';

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

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      slivers: [
        CustomTextFiledAppBar(surah: surah),
        ConatantHightWidget(height: kHight3),
        KetmaContainerWidget(),
        ConatantHightWidget(height: kHight2),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomQuranCategoriesContainer(
                text: 'السور',
                onTap: () {
                  setState(() {
                    isClicked = false;
                  });
                },
              ),
              CustomQuranCategoriesContainer(
                text: 'الاجزاء',
                onTap: () {
                  setState(() {
                    isClicked = true;
                  });
                },
              ),
            ],
          ),
        ),
        ConatantHightWidget(height: kHight2),
        isClicked
            ? JuzaSliverListBuilder(surah: surah)
            : SurahSliverGridBuilder(surah: surah),
      ],
    );
  }
}
