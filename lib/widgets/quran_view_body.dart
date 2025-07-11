import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/surah_model.dart';
import 'package:theker_app/services/surah_service.dart';
import 'package:theker_app/widgets/custom_quran_categories_container.dart';
import 'package:theker_app/widgets/surah_card_widget.dart';

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
    return Column(
      children: [
        SizedBox(height: 30),
        Container(
          height: 35,
          color: kPrimaryColor,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.white,
                iconSize: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'الختمة  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: kSecondaryFont,
                      ),
                    ),
                    Image.asset(
                      'assets/images/categories_images/Moshaf.png',
                      color: Colors.white,
                      width: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomQuranCategoriesContainer(text: 'الاحزاب'),
            CustomQuranCategoriesContainer(text: 'الاجزاء'),
            CustomQuranCategoriesContainer(text: 'السور'),
          ],
        ),
        SizedBox(height: 30),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 50,
              crossAxisSpacing: 20,
            ),
            itemCount: surah.length,
            itemBuilder: (context, index) =>
                SurahCardWidget(surahModel: surah[index]),
          ),
        ),
      ],
    );
  }
}
