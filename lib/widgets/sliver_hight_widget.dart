import 'package:flutter/material.dart';

class ConatantHightWidget extends StatelessWidget {
  const ConatantHightWidget({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: SizedBox(height: height));
  }
}
