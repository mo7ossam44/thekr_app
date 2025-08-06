import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:theker_app/features/azkar/presentation/views_model/azkar_model.dart';

class AzkarService {
  Future<List<AzkarModel>> getAzzkar({required String categoryAzkar}) async {
    try {
      String response = await rootBundle.loadString(
        'assets/quran_assets/azkar.json',
      );
      Map<String, dynamic> jsonData = json.decode(response);
      List<dynamic> morningList = jsonData[categoryAzkar];
      List<AzkarModel> azkarData = [];
      for (var item in morningList) {
        azkarData.add(AzkarModel.fromJson(item));
      }
      return azkarData;
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}
