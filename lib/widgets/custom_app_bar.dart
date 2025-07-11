import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            color: Colors.white.withOpacity(0.8),
          ),
          Text(
            'تخطي',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: kSecondaryFont,
            ),
          ),
        ],
      ),
    );
  }
}
