import 'package:bloc/bloc.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/models/azkar_model.dart';
import 'package:theker_app/services/azkar_service.dart';

class GetAzkarCubit extends Cubit<GetAzkarStates> {
  GetAzkarCubit() : super(AzkarSucess());

  List<AzkarModel> morningAzkar = [];
  List<AzkarModel> eveningAzkar = [];

  Future<void> getMorningAzkar() async {
    try {
      emit(AzkarLoading());
      morningAzkar = await AzkarService().getMorningAzzkar();
      emit(AzkarSucess());
    } catch (e) {
      emit(AzkarFaliure());
    }
  }

  List<AzkarModel> getData() => morningAzkar;

  Future<void> getEveningAzkar() async {
    try {
      emit(AzkarLoading());
      morningAzkar = await AzkarService().getEviningAzzkar();
      emit(AzkarSucess());
    } catch (e) {
      emit(AzkarFaliure());
    }
  }

  List<AzkarModel> getevenData() => morningAzkar;
}
