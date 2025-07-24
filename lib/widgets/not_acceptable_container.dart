import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class NotAcceptPrayerContainer extends StatelessWidget {
  const NotAcceptPrayerContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding:const EdgeInsets.only(right: 10),
      height: 55,
      alignment:  Alignment.centerRight,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xff141212),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(fontFamily: kSecondaryFont, fontSize: 15),
      ),
    );
  }
}
