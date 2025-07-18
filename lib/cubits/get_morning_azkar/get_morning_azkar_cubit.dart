import 'package:bloc/bloc.dart';
import 'package:theker_app/cubits/get_morning_azkar/get_morning_azkar_states.dart';
import 'package:theker_app/models/morning_azkar_model.dart';
import 'package:theker_app/services/morning_azkar_service.dart';

class GetMorningAzkarCubit extends Cubit<GetMorningAzkarStates> {
  GetMorningAzkarCubit() : super(MorningAzkarSucess());

  List<MorningAzkarModel> morningAzkar = [];

  Future<void> getMorningAzkar() async {
    try {
      emit(MorningAzkarLoading());
      morningAzkar = await MorningAzkarService().getAzkar();
      emit(MorningAzkarSucess());
    } catch (e) {
      emit(MorningAzkarFaliure());
    }
  }

  List<MorningAzkarModel> getData() => morningAzkar;
}
