import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/get_prayers_time_cubit/get_prayers_states.dart';
import 'package:theker_app/models/prayer_time_model.dart';
import 'package:theker_app/services/prayer_time_service.dart';

class GetPrayersCubit extends Cubit<GetPrayersStates> {
  GetPrayersCubit() : super(PrayersInitial());
  late PrayerTimeModel prayerTimeModel;

  Future<void> fetchAllPrayers() async {
    try {
      emit(PrayersLoading());
      prayerTimeModel = await PrayerTimeService().getPrayerTimes();
      emit(PrayersSuceess());
    } catch (e) {
      emit(PrayersFaliure(e.toString()));
    }
  }
}
