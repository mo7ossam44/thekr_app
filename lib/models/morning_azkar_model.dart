class MorningAzkarModel {
  final int id;
  final int count;
  final String text;

  MorningAzkarModel({
    required this.id,
    required this.count,
    required this.text,
  });

  factory MorningAzkarModel.fromJson(Map<String, dynamic> json) {
    return MorningAzkarModel(
      id: json['id'],
      count: json['count'],
      text: json['text'],
    );
  }
}
