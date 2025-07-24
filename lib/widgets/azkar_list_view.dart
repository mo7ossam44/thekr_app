import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:theker_app/models/azkar_model.dart';
import 'package:theker_app/widgets/custom_azkar_container.dart';

class AzkarListViewBuilder extends StatelessWidget {
  const AzkarListViewBuilder({super.key, required this.data});

  final List<AzkarModel> data;

  @override
  Widget build(BuildContext context) {
    return LiveList(
      showItemInterval: const Duration(milliseconds: 100),
      showItemDuration: const Duration(milliseconds: 300),
      visibleFraction: 0.05, // العنصر يظهر عند 5% من دخوله
      itemCount: data.length,
      itemBuilder: (context, index, animation) {
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.1),
              end: Offset.zero,
            ).animate(animation),
            child: CustomAzkarContainerCard(morningAzkar: data[index]),
          ),
        );
      },
    );
  }
}

        // return CustomAzkarContainerCard(morningAzkar: data[index]);