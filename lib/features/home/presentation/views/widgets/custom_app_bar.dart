import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            iconSize: 20,
            color: Colors.grey.shade400,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: kSecondaryFont,
            ),
          ),
        ],
      ),
    );
  }
}
