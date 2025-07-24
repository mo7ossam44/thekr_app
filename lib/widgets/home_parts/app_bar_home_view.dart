import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
            ),
            Text(
              'ذِكر',
              style: TextStyle(
                fontFamily: kPrimaryFont,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Icon(Icons.settings_outlined, size: 20, color: Colors.white),
                SizedBox(width: 5),
                Icon(Icons.search_outlined, size: 20, color: Colors.white),
                SizedBox(width: 5),
                Icon(Icons.star_border_sharp, size: 20, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
