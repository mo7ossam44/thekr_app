class PrayerTimeModel {
  final String region;
  final String country;
  final PrayerTimes prayerTimes;
  final HijriDate hijriDate;
  final String dateEn;
  final String timezone;

  PrayerTimeModel({
    required this.region,
    required this.country,
    required this.prayerTimes,
    required this.hijriDate,
    required this.dateEn,
    required this.timezone,
  });

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    return PrayerTimeModel(
      region: json['region'],
      country: json['country'],
      prayerTimes: PrayerTimes.fromJson(json['prayer_times']),
      hijriDate: HijriDate.fromJson(json['date']['date_hijri']),
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

class HijriDate {
  final String date;
  final String day;
  final Weekday weekday;
  final Month month;
  final String year;

  HijriDate({
    required this.date,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
  });

  factory HijriDate.fromJson(Map<String, dynamic> json) {
    return HijriDate(
      date: json['date'],
      day: json['day'],
      weekday: Weekday.fromJson(json['weekday']),
      month: Month.fromJson(json['month']),
      year: json['year'],
    );
  }
}

class Weekday {
  final String en;
  final String ar;

  Weekday({required this.en, required this.ar});

  factory Weekday.fromJson(Map<String, dynamic> json) {
    return Weekday(en: json['en'], ar: json['ar']);
  }
}

class Month {
  final int number;
  final String en;
  final String ar;
  final int days;

  Month({
    required this.number,
    required this.en,
    required this.ar,
    required this.days,
  });

  factory Month.fromJson(Map<String, dynamic> json) {
    return Month(
      number: json['number'],
      en: json['en'],
      ar: json['ar'],
      days: json['days'],
    );
  }
}
