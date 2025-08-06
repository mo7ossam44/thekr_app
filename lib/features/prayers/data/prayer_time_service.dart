import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:theker_app/features/prayers/presentation/views_model/prayer_time_model.dart';

class PrayerTimeService {
  final dio = Dio();

  Future<PrayerTimeModel> getPrayerTimes() async {
    try {
      Response response = await dio.get(
        'https://alquran.vip/APIs/getPrayerTimes',
      );
      final data = PrayerTimeModel.fromJson(response.data);
      return data;
    } catch (e) {
      log(e.toString());
      throw Exception('oops there was an error, tray again later!');
    }
  }
}
