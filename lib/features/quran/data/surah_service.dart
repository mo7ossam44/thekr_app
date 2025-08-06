import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';

class QuranService {
  final dio = Dio();

  Future<List<SurahModel>> getSurah() async {
    String response = await rootBundle.loadString(
      'assets/quran_assets/114_surah_data.json',
    );
    List<dynamic> jsonData = json.decode(response);
    List<SurahModel> surahModelList = [];
    for (var surah in jsonData) {
      SurahModel surahModel = SurahModel.fromJson(surah);
      surahModelList.add(surahModel);
    }
    return surahModelList;
  }

  // Future<List<AyatModel>> getAyah({required int surahNumber}) async {
  //   Response response = await dio.get(
  //     'https://api.alquran.cloud/v1/surah/$surahNumber/ar',
  //   );
  //   Map<String, dynamic> jsonData = response.data;
  //   List<dynamic> ayaData = jsonData['data']['ayahs'];
  //   List<AyatModel> ayatModelList = [];
  //   for (var ayah in ayaData) {
  //     AyatModel aya = AyatModel(
  //       page: ayah['page'],
  //       text: ayah['text'],
  //       numberInSurah: ayah['numberInSurah'],
  //     );
  //     ayatModelList.add(aya);
  //   }
  //   return ayatModelList;
  // }
}
