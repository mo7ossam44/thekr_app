import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  @override
  void initState() {
    super.initState();

      _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );


    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

  
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3), // تبدأ من تحت شوي
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
    excutiveNavigation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void excutiveNavigation() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: Text(
            'ذِكر',
            style: TextStyle(
              fontFamily: kPrimaryFont,
              fontSize: 84,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
