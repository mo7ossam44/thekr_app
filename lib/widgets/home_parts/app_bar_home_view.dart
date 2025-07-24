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
              icon: Icon(
                Icons.play_arrow_rounded,
                //  color: Colors.white
                color: kPrimaryColor,
              ),
            ),
            Text(
              'ذِكر',
              style: TextStyle(
                fontFamily: kPrimaryFont,
                fontSize: 30,
                fontWeight: FontWeight.w400,
                // color: Colors.white,
                color: kPrimaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.sunny),
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
