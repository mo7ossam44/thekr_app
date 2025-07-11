import 'package:flutter/material.dart';
import 'package:theker_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xff1C1A1A),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
