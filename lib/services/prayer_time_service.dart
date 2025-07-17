import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:theker_app/models/prayer_time_model.dart';

class PrayerTimeService {
  final dio = Dio();

  Future<List<PrayerTimeModel>> getPrayerTimes({
    required String countryName,
    required String cityName,
  }) async {
    try {
      Response response = await dio.get(
        'https://api.aladhan.com/v1/calendarByCity/2025/7?city=$cityName&country=$countryName&method=5',
      );
      List<PrayerTimeModel> prayers = PrayerTimeModel.fromJsonList(response.data);
      return prayers;
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error, tray again later!');
    }
  }
}
