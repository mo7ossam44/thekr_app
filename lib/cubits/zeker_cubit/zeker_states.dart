
import 'package:theker_app/features/adad/presentation/views_model/zeker_model.dart';

abstract class ZekerStates {}

class ZekerIntial extends ZekerStates {}

class ZekerLoaded extends ZekerStates {
  final List<ZekerModel> zeker;

  ZekerLoaded(this.zeker);
}
