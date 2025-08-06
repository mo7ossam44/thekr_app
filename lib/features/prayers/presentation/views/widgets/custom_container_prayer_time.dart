import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomContainerInPrayerPage extends StatelessWidget {
  const CustomContainerInPrayerPage({
    super.key,
    required this.text,
    required this.ontap,
    required this.icon,
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
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : kPrimaryColor,
                ),
              ),
              Icon(icon, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
