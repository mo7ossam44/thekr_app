import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => categoryModel.targetPage),
        );
      },
      child: Card(
        color: Color(0xff222020),
        child: ListTile(
          trailing: Text(
            categoryModel.name,
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: 16,
              color: Color(0xff007D45),
            ),
          ),
        ),
      ),
    );
  }
}

