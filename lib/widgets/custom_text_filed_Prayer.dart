import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomTextFiledPrayer extends StatelessWidget {
  const CustomTextFiledPrayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 15,
      cursorColor: Colors.white.withOpacity(0.4),
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xff373535),
        // hintText: 'بني سويف الجديدة',
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              color: Colors.white.withOpacity(0.4),
              icon: Icon(Icons.view_headline_sharp),
            ),
            Row(
              children: [
                Text(
                  'بني سويف الجديدة',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: kSecondaryFont,
                    fontSize: 15,
                    backgroundColor: Color(0xff373535),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.location_on),
                  iconSize: 20,
                  color: Colors.white.withOpacity(0.4),
                ),
              ],
            ),
          ],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
