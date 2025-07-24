import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/widgets/views_body/prayer_time_body.dart';
import 'package:theker_app/cubits/get_prayers_time_cubit/get_prayers_cubit.dart';

class PrayerTimeView extends StatelessWidget {
  const PrayerTimeView({super.key});

  static const String routeName = 'prayertime';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetPrayersCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'مواقيت الصلاة',
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: kAppBarFontSize,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        backgroundColor: Color(0xff1C1A1A),
        body: SafeArea(child: PrayerTimeViewBody()),
      ),
    );
  }
}
