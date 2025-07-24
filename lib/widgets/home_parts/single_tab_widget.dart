import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class SingleTabWidget extends StatelessWidget {
  const SingleTabWidget({super.key, required this.text , required this.ontap});

  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Tab(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: kSecondaryFont,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
