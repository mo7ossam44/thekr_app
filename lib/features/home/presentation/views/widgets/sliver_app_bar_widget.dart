import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/cubits/app_theme_cubit/theme_cubit.dart';


class SliverAppBarWidget extends StatefulWidget {
  const SliverAppBarWidget({super.key});

  @override
  State<SliverAppBarWidget> createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  // final PageController _pageController = PageController();
  // int _currentPage = 0;
  // Timer? _timer;
  
  // @override
  // void initState() {
  //   super.initState();
  //   _startAutoScroll();
  // }

  // void _startAutoScroll() {
  //   _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
  //     if (_currentPage < images.length - 1) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }

  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: Duration(milliseconds: 500),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {
            Theme.of(context).brightness == Brightness.dark
                ? AppCubit.get(context).selectTheme(ThemeModeState.light)
                : AppCubit.get(context).selectTheme(ThemeModeState.dark);
          },
          icon: Theme.of(context).brightness == Brightness.light
              ? Icon(Icons.nightlight_round_outlined)
              : Icon(Icons.sunny),
          color: kSecondaryColor,
        ),
      ],
      expandedHeight: 250,
      title: Text(
        'ذِكر',
        style: TextStyle(
          fontFamily: kPrimaryFont,
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: kSecondaryColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.play_arrow_rounded, color: kSecondaryColor),
      ),
      flexibleSpace: PageView.builder(
        // controller: _pageController,
        itemCount: images.length,
        itemBuilder: (context, index) => FlexibleSpaceBar(
          background: Image.asset(images[index], fit: BoxFit.cover),
        ),
      ),
    );
  }
}
