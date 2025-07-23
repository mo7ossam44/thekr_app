import 'package:hive/hive.dart';
part 'zeker_model.g.dart';

@HiveType(typeId: 0)
class ZekerModel extends HiveObject {
  @HiveField(0)
  final String zekerText;
  @HiveField(1)
  final int repratedTime;

  ZekerModel({required this.zekerText, required this.repratedTime});
}


