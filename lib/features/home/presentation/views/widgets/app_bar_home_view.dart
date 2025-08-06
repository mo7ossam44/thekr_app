import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/cubits/app_theme_cubit/theme_cubit.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow_rounded, color: kPrimaryColor),
            ),
            Text(
              'ذِكر',
              style: TextStyle(
                fontFamily: kPrimaryFont,
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: kPrimaryColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Theme.of(context).brightness == Brightness.dark
                    ? AppCubit.get(context).selectTheme(ThemeModeState.light)
                    : AppCubit.get(context).selectTheme(ThemeModeState.dark);
              },
              icon: Theme.of(context).brightness == Brightness.light
                  ? Icon(Icons.nightlight_round_outlined)
                  : Icon(Icons.sunny),
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
