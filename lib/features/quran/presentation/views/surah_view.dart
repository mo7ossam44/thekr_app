import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';
import 'package:theker_app/features/quran/data/surah_service.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/surah_view_body.dart';

class SurahView extends StatefulWidget {
  const SurahView({
    super.key,
    required this.startPage,
    required this.surahName,
  });

  static const String routeName = 'surah';
  final int startPage;
  final String surahName;

  @override
  State<SurahView> createState() => _SurahViewState();
}

class _SurahViewState extends State<SurahView> {
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
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Color(0xff1C1A1A)
          : kSecondaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
          color: kSecondaryColor,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Text(
          'سورة ${widget.surahName}',
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: kAppBarFontSize,
            color: kSecondaryColor,
          ),
        ),
      ),
      body: SurahViewBody(
        startPage: widget.startPage,
        surahName: widget.surahName,
      ),
    );
  }
}
