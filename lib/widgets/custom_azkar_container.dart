import 'package:flutter/material.dart';
import 'package:theker_app/models/morning_azkar_model.dart';

class CustomAzkarContainerCard extends StatelessWidget {
  const CustomAzkarContainerCard({super.key, required this.morningAzkar});

  final MorningAzkarModel morningAzkar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xff1C1A1A),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                maxLines: 5,
                cleanText(morningAzkar.text),
                textAlign: TextAlign.justify,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Kitab',
                  color: Colors.white,
                  height: 1.7,
                  fontSize: 16,
                  wordSpacing: 0.8,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            alignment: Alignment.center,
            width: 70,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(15),
                bottomEnd: Radius.circular(15),
              ),
            ),
            child: Text(
              morningAzkar.count.toString(),
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }

  String cleanText(String input) {
    return input
        .replaceAll(RegExp(r'\s+'), ' ') // يشيل الفراغات الكتير
        .replaceAll('\n', ' ')
        .trim();
  }
}
