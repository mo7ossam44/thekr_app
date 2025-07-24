import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_states.dart';
import 'package:theker_app/models/zeker_model.dart';

class ZekerCubit extends Cubit<ZekerStates> {
  ZekerCubit() : super(ZekerIntial());

  List<ZekerModel>? azkar;
  fetchAllAzkar() {
    var azkarBox = Hive.box<ZekerModel>(kAzkarBox);
    azkar = azkarBox.values.toList();
    emit(ZekerLoaded(azkar!));
  }
}
