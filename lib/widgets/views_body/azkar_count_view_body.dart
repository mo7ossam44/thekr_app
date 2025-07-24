import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';
import 'package:theker_app/widgets/sliver_hight_widget.dart';
import 'package:theker_app/widgets/bottom_sheet_container.dart';
import 'package:theker_app/widgets/custom_container_prayer_time.dart';
import 'package:theker_app/widgets/azker_count_parts/azkar_count_sliver_grid.dart';

class AzkarCountViewBody extends StatefulWidget {
  const AzkarCountViewBody({super.key});

  @override
  State<AzkarCountViewBody> createState() => _AzkarCountViewBodyState();
}

class _AzkarCountViewBodyState extends State<AzkarCountViewBody> {
  @override
  void initState() {
    BlocProvider.of<ZekerCubit>(context).fetchAllAzkar();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        ConatantHightWidget(height: kHight3),
        AzkarCountSliverGridBuilder(),
        ConatantHightWidget(height: kHight2),
        CustomContainerInPrayerPage(
          text: 'اضافة بطاقة ذكر',
          ontap: () {
            showBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetContainer();
              },
            );
          },
          icon: Icons.add,
        ),
        ConatantHightWidget(height: 20),
        CustomContainerInPrayerPage(
          text: 'تصفير العداد',
          ontap: () {},
          icon: Icons.replay_circle_filled_outlined,
        ),
      ],
    );
  }
}
