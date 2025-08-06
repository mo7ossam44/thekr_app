import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/features/prayers/presentation/manger/get_prayers_time_cubit/get_prayers_cubit.dart';
import 'package:theker_app/features/prayers/presentation/manger/get_prayers_time_cubit/get_prayers_states.dart';

class PrayersSliverGrid extends StatelessWidget {
  const PrayersSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPrayersCubit, GetPrayersStates>(
      builder: (context, state) {
        final isLoading = state is PrayersLoading;
        final prayerTimeModel = state is PrayersSuceess
            ? BlocProvider.of<GetPrayersCubit>(context).prayerTimeModel
            : null;
        final List<Map<String, String>> items = prayerTimeModel != null
            ? [
                {'name': 'الفجر', 'time': prayerTimeModel.prayerTimes.fajr},
                {'name': 'الشروق', 'time': prayerTimeModel.prayerTimes.sunrise},
                {'name': 'الظهر', 'time': prayerTimeModel.prayerTimes.dhuhr},
                {'name': 'العصر', 'time': prayerTimeModel.prayerTimes.asr},
                {'name': 'المغرب', 'time': prayerTimeModel.prayerTimes.maghrib},
                {'name': 'العشاء', 'time': prayerTimeModel.prayerTimes.isha},
              ]
            : List.generate(
                6,
                (_) => {'name': '---', 'time': '--:--'},
              ); // Placeholder
        return Skeletonizer.sliver(
          enabled: isLoading,
          child: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return CustomPrayerContainer(prayerTimes: items[index]);
            }, childCount: items.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.4,
            ),
          ),
        );
      },
    );
  }
}

class CustomPrayerContainer extends StatelessWidget {
  const CustomPrayerContainer({super.key, required this.prayerTimes});

  final Map prayerTimes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Theme.of(context).brightness == Brightness.light
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff007D45), Color(0xff688176)],
              )
            : LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff373535), Color(0xff373535)],
              ),
        borderRadius: BorderRadius.circular(12),
      ),
      // alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            prayerTimes['name']!,
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
            prayerTimes['time']!,
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}