import 'package:flutter/material.dart';
import 'package:theker_app/features/onboarding/views/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'onBoardingView';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Theme.of(context).brightness == Brightness.dark
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff373535), Color(0xff1B1919)],
              )
            : LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 205, 255, 202),
                  Color.fromARGB(255, 227, 227, 227),
                ],
              ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: OnBoardingBody(),
      ),
    );
  }
}
