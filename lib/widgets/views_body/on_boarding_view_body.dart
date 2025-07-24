import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/on_boarding_page_view_builder.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff373535), Color(0xff1B1919)],
        ),
      ),
      child: OnBoardingPageViewBuilder(catygories: catygories),
    );
  }
}
