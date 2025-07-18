import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomQuranCategoriesContainer extends StatefulWidget {
  const CustomQuranCategoriesContainer({super.key, required this.text});

  final String text;

  @override
  State<CustomQuranCategoriesContainer> createState() =>
      _CustomQuranCategoriesContainerState();
}

class _CustomQuranCategoriesContainerState
    extends State<CustomQuranCategoriesContainer> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isClicked = true;
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xff141212),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isClicked ? kPrimaryColor : Color(0xff141212),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: isClicked ? kPrimaryColor : Colors.white,
            fontFamily: 'KFGQPC',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
