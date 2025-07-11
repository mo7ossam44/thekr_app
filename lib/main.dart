import 'package:flutter/material.dart';
import 'package:theker_app/core/helper_function.dart';
import 'package:theker_app/views/home_view.dart';
import 'package:theker_app/views/splash_view.dart';

void main() {
  runApp(const ThkerApp());
}

class ThkerApp extends StatelessWidget {
  const ThkerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: onGenerateRoute,
      // initialRoute: SplashView.routeName,
      home: HomeView(),
    );
  }
}
