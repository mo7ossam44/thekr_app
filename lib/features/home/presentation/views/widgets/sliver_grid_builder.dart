import 'package:flutter/material.dart';
import 'package:theker_app/features/home/presentation/views_model/category_model.dart';
import 'package:theker_app/features/home/presentation/views/widgets/category_card.dart';

class SliverGridBuilder extends StatelessWidget {
  const SliverGridBuilder({super.key, required this.categoryModel});

  final List<CategoryModel> categoryModel;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
      sliver: 
       SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          childAspectRatio: 4, 
        ),
        itemCount: categoryModel.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categoryModel[index]);
        },
      ),
    );
  }
}
