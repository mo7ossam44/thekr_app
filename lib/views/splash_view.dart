import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: kPrimaryColor, body: SplashViewBody());
  }
}
