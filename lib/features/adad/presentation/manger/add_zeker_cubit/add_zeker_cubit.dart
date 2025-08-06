import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/adad/presentation/manger/add_zeker_cubit/add_zeker_states.dart';
import 'package:theker_app/features/adad/presentation/views_model/zeker_model.dart';

class AddZekerCubit extends Cubit<AddZekerStates> {
  AddZekerCubit() : super(AddZekerInitial());

  addZeker(ZekerModel zeker) async {
    try {
      emit(AddZekerLoading());
      var azkarBox = Hive.box<ZekerModel>(kAzkarBox);
      await azkarBox.add(zeker);
      emit(AddZekerSucess()); 
    } catch (e) {
      emit(AddZekerFaliure(e.toString()));
    }
  }
}
