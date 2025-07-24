import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/sonan_parts/main_row_widget.dart';

class SonanViewBody extends StatelessWidget {
  const SonanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(23),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(23),
                      topRight: Radius.circular(23),
                    ),
                  ),
                  child: MainRowWidget(),
                ),
                SizedBox(height: 20),
                buildRow('2', 'فجر', '0'),
                const Divider(color: Colors.white24),
                buildRow('4', 'ظهر', '2'),
                const Divider(color: Colors.white24),
                buildRow('0', 'عصر', '0'),
                const Divider(color: Colors.white24),
                buildRow('0', 'مغرب', '2'),
                const Divider(color: Colors.white24),
                buildRow('0', 'عشاء', '2'),
              ],
            ),
          ),
          SizedBox(height: 50),
          Text(
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: 16,
              letterSpacing: 1.1,
              fontWeight: FontWeight.bold,
            ),
            kSonan1,
          ),
          SizedBox(height: 20),
          Text(
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: 16,
              letterSpacing: 1.1,
              fontWeight: FontWeight.bold,
            ),
            kSonan2,
          ),
        ],
      ),
    );
  }

  Widget buildRow(String before, String prayer, String after) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            before,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(
            prayer,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(
            after,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: kSecondaryFont,
            ),
          ),
        ],
      ),
    );
  }
}
