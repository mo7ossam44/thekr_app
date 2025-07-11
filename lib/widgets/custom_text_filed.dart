import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomTextFiledAppBar extends StatelessWidget {
  const CustomTextFiledAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 183,
      height: 40,
      child: TextField(
        cursorHeight: 15,
        cursorColor: Colors.white.withOpacity(0.4),
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff373535),
          hintText: '     ابحث عن سوره',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 20,
            color: Colors.white.withOpacity(0.4),
          ),
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.4),
            fontFamily: kSecondaryFont,
            fontSize: 15,
            backgroundColor: Color(0xff373535),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
