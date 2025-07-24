import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomTextFiledPrayer extends StatelessWidget {
  const CustomTextFiledPrayer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        cursorHeight: 15,
        cursorColor: Colors.white.withOpacity(0.4),
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff373535),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_on),
                    iconSize: 20,
                    color: Colors.white,
                  ),
                  Text(
                    'بني سويف الجديدة',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: kSecondaryFont,
                      fontSize: 15,
                      backgroundColor: Color(0xff373535),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: Icon(Icons.more_horiz_rounded),
              ),
            ],
          ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: BorderSide(color: Colors.transparent),
          // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent),
          ),

          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          // ),
        ),
      ),
    );
  }
}
