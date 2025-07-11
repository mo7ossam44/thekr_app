import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class SingleTabWidget extends StatelessWidget {
  const SingleTabWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: kSecondaryFont,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
