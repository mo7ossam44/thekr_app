abstract class GetPrayersStates {}

class PrayersInitial extends GetPrayersStates {}

class PrayersLoading extends GetPrayersStates {}

class PrayersSuceess extends GetPrayersStates {}

class PrayersFaliure extends GetPrayersStates {
  final String errMessage;

  PrayersFaliure(this.errMessage);
}
