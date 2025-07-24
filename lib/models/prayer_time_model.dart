class PrayerTimeModel {
  final String hijriMonthDate;
  final String gergorianMonthDate;
  final String hijriMonthName;
  final String gergorianMonthName;

  PrayerTimeModel({
    required this.hijriMonthDate,
    required this.gergorianMonthDate,
    required this.hijriMonthName,
    required this.gergorianMonthName,
  });

  factory PrayerTimeModel.fromJson(json) {
    return PrayerTimeModel(
      hijriMonthName: json['date']['hijri']['date'],
      hijriMonthDate: json['date']['hijri']['month']['ar'],
      gergorianMonthDate: json['date']['gergorian']['date'],
      gergorianMonthName: json['date']['gergorian']['month']['en'],
    );
  }
}
