import 'package:flutter/material.dart';
import 'package:theker_app/widgets/views_body/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'onBoardingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingBody());
  }
}

