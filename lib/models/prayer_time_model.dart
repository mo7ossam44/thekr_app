class PrayerTimeModel {
  final String fajr;
  final String sunrise;
  final String dhuhr;
  final String asr;
  final String maghrib;
  final String isha;
  final String hijriMonthDate;
  final String gergorianMonthDate;
  final String hijriMonthName;
  final String gergorianMonthName;

  PrayerTimeModel({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.hijriMonthDate,
    required this.gergorianMonthDate,
    required this.hijriMonthName,
    required this.gergorianMonthName,
  });

  factory PrayerTimeModel.fromJson(json) {
    return PrayerTimeModel(
      asr: json['timings']['Asr'],
      fajr: json['timings']['Fajr'],
      isha: json['timings']['Isha'],
      dhuhr: json['timings']['Dhuhr'],
      sunrise: json['timings']['Sunrise'],
      maghrib: json['timings']['Maghrib'],
      hijriMonthName: json['date']['hijri']['date'],
      hijriMonthDate: json['date']['hijri']['month']['ar'],
      gergorianMonthDate: json['date']['gergorian']['date'],
      gergorianMonthName: json['date']['gergorian']['month']['en'],
    );
  }

  // ✅ دالة static جديدة لتحويل list كاملة
  static List<PrayerTimeModel> fromJsonList(json) {
    List<dynamic> data = json['data'];
    return data.map((day) => PrayerTimeModel.fromJson(day)).toList();
  }
}
