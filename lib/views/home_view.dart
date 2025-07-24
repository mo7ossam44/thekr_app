import 'package:flutter/material.dart';
import 'package:theker_app/widgets/views_body/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home';

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
