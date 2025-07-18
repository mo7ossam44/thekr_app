import 'package:dio/dio.dart';
import 'package:theker_app/models/morning_azkar_model.dart';

class MorningAzkarService {
  final dio = Dio();

  Future<List<MorningAzkarModel>> getAzkar() async {
    Response response = await dio.get('https://alquran.vip/APIs/azkar');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> morAzkar = jsonData['morning_azkar'];
    List<MorningAzkarModel> azkarData = [];
    for (var zeker in morAzkar) {
      MorningAzkarModel azkar = MorningAzkarModel.fromJson(zeker);
      azkarData.add(azkar);
    }
    return azkarData;
  }
}
