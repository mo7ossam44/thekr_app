import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class NotAcceptPrayerContainer extends StatelessWidget {
  const NotAcceptPrayerContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(right: 10, bottom: 10, top: 10),
      height: 70,
      alignment: Alignment.centerRight,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xff141212)
            : kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: kSecondaryFont,
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
