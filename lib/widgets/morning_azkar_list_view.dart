import 'package:flutter/material.dart';
import 'package:theker_app/models/azkar_model.dart';
import 'package:theker_app/widgets/custom_azkar_container.dart';

class AzkarListViewBuilder extends StatelessWidget {
  const AzkarListViewBuilder({
    super.key,
    required this.data,
  });

  final List<AzkarModel> data;

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
