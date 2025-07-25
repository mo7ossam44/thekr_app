class SurahModel {
  final int id;
  final String arabic;
  final String turkish;
  final int aya;
  final String place;
  final int startPage;

  SurahModel({
    required this.id,
    required this.arabic,
    required this.turkish,
    required this.aya,
    required this.place,
    required this.startPage
  });

  factory SurahModel.fromJson(json) {
    return SurahModel(
      id: json['id'] ?? 0,
      arabic: json['arabic'] ?? '',
      turkish: json['turkish'] ?? '',
      aya: json['aya'] ?? 0,
      place: json['place'] ?? '',
      startPage: json['startPage'] ?? '',
    );
  }
}
