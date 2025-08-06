class AzkarModel {
  final int id;
  final int count;
  final String text;

  AzkarModel({
    required this.id,
    required this.count,
    required this.text,
  });

  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    return AzkarModel(
      id: json['id'],
      count: json['count'],
      text: json['text'],
    );
  }
}
