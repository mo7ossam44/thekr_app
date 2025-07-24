
import 'package:theker_app/models/zeker_model.dart';

abstract class ZekerStates {}

class ZekerIntial extends ZekerStates {}

class ZekerLoaded extends ZekerStates {
  final List<ZekerModel> zeker;

  ZekerLoaded(this.zeker);
}
