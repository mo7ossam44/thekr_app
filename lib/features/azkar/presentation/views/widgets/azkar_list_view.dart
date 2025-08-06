import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:theker_app/features/azkar/presentation/views_model/azkar_model.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/custom_azkar_container.dart';

class AzkarListViewBuilder extends StatelessWidget {
  const AzkarListViewBuilder({super.key, required this.data});

  final List<AzkarModel> data;

  @override
  Widget build(BuildContext context) {
    return LiveList(
      showItemInterval: const Duration(milliseconds: 100),
      showItemDuration: const Duration(milliseconds: 300),
      visibleFraction: 0.05,
      itemCount: data.length,
      itemBuilder: (context, index, animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.1),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CustomAzkarContainerCard(morningAzkar: data[index]),
            ),
          ),
        );
      },
    );
  }
}

        // return CustomAzkarContainerCard(morningAzkar: data[index]);