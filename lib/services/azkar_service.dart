import 'package:dio/dio.dart';
import 'package:theker_app/models/azkar_model.dart';

class AzkarService {
  final dio = Dio();

  Future<List<AzkarModel>> getMorningAzzkar() async {
    Response response = await dio.get('https://alquran.vip/APIs/azkar');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> morAzkar = jsonData['morning_azkar'];
    List<AzkarModel> azkarData = [];
    for (var zeker in morAzkar) {
      AzkarModel azkar = AzkarModel.fromJson(zeker);
      azkarData.add(azkar);
    }
    return azkarData;
  }

  Future<List<AzkarModel>> getEviningAzzkar() async {
    Response response = await dio.get('https://alquran.vip/APIs/azkar');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> morAzkar = jsonData['evening_azkar'];
    List<AzkarModel> azkarData = [];
    for (var zeker in morAzkar) {
      AzkarModel azkar = AzkarModel.fromJson(zeker);
      azkarData.add(azkar);
    }
    return azkarData;
  }
}
