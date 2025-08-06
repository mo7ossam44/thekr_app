import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomQuranCategoriesContainer extends StatelessWidget {
  const CustomQuranCategoriesContainer({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xff141212)
              : kSecondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? kSecondaryColor
                : kPrimaryColor,
            fontFamily: 'KFGQPC',
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
