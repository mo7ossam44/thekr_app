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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Color(0xFFFFFF), kPrimaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        padding: EdgeInsets.all(2), // السماكة الخارجية للحد
        child: Container(
          padding: EdgeInsets.only(right: 10),
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Color(0xff222020),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            categoryModel.name,
            style: TextStyle(
              fontFamily: kSecondaryFont, 
              fontSize: 15,
              color: Color(0xff007D45),
            ),
          ),
        ),
      ),
    );
  }
}
