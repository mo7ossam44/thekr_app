import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomContainerInPrayerPage extends StatelessWidget {
  const CustomContainerInPrayerPage({
    super.key,
    required this.text,
    required this.ontap,
    required this.icon
  });

  final String text;
  final void Function()? ontap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xff141212),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: TextStyle(fontFamily: kSecondaryFont)),
              Icon(icon, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
