import 'package:bloc/bloc.dart';
import 'package:theker_app/features/azkar/presentation/manger/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/features/azkar/presentation/views_model/azkar_model.dart';
import 'package:theker_app/features/azkar/data/azkar_service.dart';

class GetAzkarCubit extends Cubit<GetAzkarStates> {
  GetAzkarCubit() : super(AzkarSucess());

  List<AzkarModel> azkarCubitList = [];

  Future<void> getAzkarCubit({required String categoryAzkarCubit}) async {
    try {
      emit(AzkarLoading());
      azkarCubitList = await AzkarService().getAzzkar(
        categoryAzkar: categoryAzkarCubit,
      );
      emit(AzkarSucess());
    } catch (e) {
      emit(AzkarFaliure());
    }
  }

  List<AzkarModel> getData() => azkarCubitList;
}
