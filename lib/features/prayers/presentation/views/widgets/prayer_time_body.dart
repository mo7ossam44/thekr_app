import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/features/prayers/presentation/views/sonan_view.dart';
import 'package:theker_app/features/prayers/presentation/views_model/prayer_time_model.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/prayers_sliver_grid.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/prayers_loaded_widget.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/prayers_loading_widget.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/prayer_hadith_container.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/custom_text_filed_prayer.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/custom_container_prayer_time.dart';
import 'package:theker_app/features/prayers/presentation/views/not_acceptable_prayer_time_view.dart';
import 'package:theker_app/features/prayers/presentation/manger/get_prayers_time_cubit/get_prayers_cubit.dart';
import 'package:theker_app/features/prayers/presentation/manger/get_prayers_time_cubit/get_prayers_states.dart';

class PrayerTimeViewBody extends StatefulWidget {
  const PrayerTimeViewBody({super.key});

  @override
  State<PrayerTimeViewBody> createState() => _PrayerTimeViewBodyState();
}

class _PrayerTimeViewBodyState extends State<PrayerTimeViewBody> {
  PrayerTimeModel? prayerTimeModel;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetPrayersCubit>(context).fetchAllPrayers();
  }

  String manageDate() {
    var currentDate = DateTime.now();
    var formatetedCurrentDate = DateFormat('dd-MM-yyyy').format(currentDate);
    return formatetedCurrentDate;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          ConatantHightWidget(height: kHight1),
          BlocBuilder<GetPrayersCubit, GetPrayersStates>(
            builder: (context, state) {
              if (state is PrayersLoading) {
                return SliverToBoxAdapter(
                  child: Skeletonizer(
                    enabled: true,
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey.shade500
                            : kSecondaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                );
              } else if (state is PrayersSuceess) {
                prayerTimeModel = BlocProvider.of<GetPrayersCubit>(
                  context,
                ).prayerTimeModel;
                return CustomTextFiledPrayer(location: prayerTimeModel!.region);
              } else {
                return Card();
              }
            },
          ),
          //? timse part
          ConatantHightWidget(height: kHight1),
          BlocBuilder<GetPrayersCubit, GetPrayersStates>(
            builder: (context, state) {
              if (state is PrayersLoading) {
                return PrayerLoadingStateWidget();
              } else if (state is PrayersSuceess) {
                prayerTimeModel = BlocProvider.of<GetPrayersCubit>(
                  context,
                ).prayerTimeModel;
                String formatetedCurrentDate = manageDate();
                String monthName = DateFormat.MMMM('ar').format(DateTime.now());
                return PrayerLoadedStateWidget(
                  prayerTimeModel: prayerTimeModel,
                  formatetedCurrentDate: formatetedCurrentDate,
                  monthName: monthName,
                );
              } else {
                return SliverToBoxAdapter(child: Card());
              }
            },
          ),
          ConatantHightWidget(height: kHight1),
          //? prayers time
          PrayerTimeHadethContainer(),
          ConatantHightWidget(height: kHight1),
          PrayersSliverGrid(),
          ConatantHightWidget(height: kHight1),
          CustomContainerInPrayerPage(
            text: 'السنن الرواتب',
            ontap: () => Navigator.of(context).pushNamed(SonanView.routeName),
            icon: Icons.arrow_forward_ios_sharp,
          ),
          ConatantHightWidget(height: kHight3),
          CustomContainerInPrayerPage(
            text: 'أوقات النهي عن الصلاة',
            ontap: () => Navigator.of(
              context,
            ).pushNamed(NotAcceptablePrayerTimeView.routeName),
            icon: Icons.arrow_forward_ios_sharp,
          ),
          ConatantHightWidget(height: 50),
        ],
      ),
    );
  }
}
