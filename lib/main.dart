import 'package:flutter/material.dart';
import 'package:theker_app/core/helper_function.dart';
import 'package:theker_app/views/home_view.dart';
// import 'package:theker_app/views/prayer_time_view.dart';

void main() {
  runApp(const ThkerApp());
}

class ThkerApp extends StatelessWidget {
  const ThkerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        brightness: Brightness.dark,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.white.withOpacity(0.4),
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: HomeView.routeName,
    );
  }
}
