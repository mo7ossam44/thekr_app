import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/get_prayers_time_cubit/get_prayers_cubit.dart';
import 'package:theker_app/cubits/get_prayers_time_cubit/get_prayers_states.dart';
import 'package:theker_app/models/prayer_time_model.dart';

class PrayersSliverGrid extends StatefulWidget {
  const PrayersSliverGrid({super.key});

  @override
  State<PrayersSliverGrid> createState() => _CustomColumnPrayersState();
}

class _CustomColumnPrayersState extends State<PrayersSliverGrid> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetPrayersCubit>(context).fetchAllPrayers();
  }

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
              childAspectRatio: 1.5,
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
        color: Color(0xff373535),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            prayerTimes['name']!,
            style: TextStyle(fontFamily: kSecondaryFont, fontSize: 20),
          ),
          Text(
            prayerTimes['time']!,
            style: TextStyle(
              fontFamily: kSecondaryFont,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


//  builder: (context, state) {
//         if (state is PrayersLoading) {
//           return SliverToBoxAdapter(
//             child: Center(
//               child: CircularProgressIndicator(color: kPrimaryColor),
//             ),
//           );
//         } else if (state is PrayersSuceess) {
//           PrayerTimeModel prayerTimeModel;
//           prayerTimeModel = BlocProvider.of<GetPrayersCubit>(
//             context,
//           ).prayerTimeModel;
//           final List<Map<String, String>> items = [
//             {'name': 'الفجر', 'time': prayerTimeModel.prayerTimes.fajr},
//             {'name': 'الشروق', 'time': prayerTimeModel.prayerTimes.sunrise},
//             {'name': 'الظهر', 'time': prayerTimeModel.prayerTimes.dhuhr},
//             {'name': 'العصر', 'time': prayerTimeModel.prayerTimes.asr},
//             {'name': 'المغرب', 'time': prayerTimeModel.prayerTimes.maghrib},
//             {'name': 'العشاء', 'time': prayerTimeModel.prayerTimes.isha},
//           ];
//           return SliverGrid.builder(
//             itemCount: items.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 10,
//               childAspectRatio: 1.5,
//             ),
//             itemBuilder: (context, index) {
//               return CustomPrayerContainer(prayerTimes: items[index]);
//             },
//           );
//         } else {
//           return SliverToBoxAdapter(
//             child: Center(child: Text('No Prayers exist now')),
//           );
//         }
//       },