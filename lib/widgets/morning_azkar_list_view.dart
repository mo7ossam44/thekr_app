import 'package:flutter/material.dart';
import 'package:theker_app/models/morning_azkar_model.dart';
import 'package:theker_app/widgets/custom_azkar_container.dart';

class MorningAzkarListViewBuilder extends StatelessWidget {
  const MorningAzkarListViewBuilder({
    super.key,
    required this.data,
  });

  final List<MorningAzkarModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return CustomAzkarContainerCard(morningAzkar: data[index]);
      },
    );
  }
}
