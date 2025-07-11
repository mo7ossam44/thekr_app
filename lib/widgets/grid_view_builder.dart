import 'package:flutter/material.dart';
import 'package:theker_app/models/category_model.dart';
import 'package:theker_app/widgets/category_card.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.categoryModel});

  final List<CategoryModel> categoryModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عمودين
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          childAspectRatio: 3.8, // للتحكم في شكل المستطيل
        ),
        itemCount: categoryModel.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categoryModel[index]);
        },
      ),
    );
  }
}
