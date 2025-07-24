class PrayerTimeModel {
  final String region;
  final String country;
  final PrayerTimes prayerTimes;
  final String dateEn;
  final String timezone;

  PrayerTimeModel({
    required this.region,
    required this.country,
    required this.prayerTimes,
    required this.dateEn,
    required this.timezone,
  });

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    return PrayerTimeModel(
      region: json['region'],
      country: json['country'],
      prayerTimes: PrayerTimes.fromJson(json['prayer_times']),
      dateEn: json['date']['date_en'],
      timezone: json['meta']['timezone'],
    );
  }
}

class PrayerTimes {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;

  PrayerTimes({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  factory PrayerTimes.fromJson(Map<String, dynamic> json) {
    return PrayerTimes(
      fajr: json['Fajr'],
      sunrise: json['Sunrise'],
      dhuhr: json['Dhuhr'],
      asr: json['Asr'],
      maghrib: json['Maghrib'],
      isha: json['Isha'],
    );
  }
}