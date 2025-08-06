import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/not_acceptable_container.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';

class NotAcceptablePrayerTimeViewBody extends StatelessWidget {
  const NotAcceptablePrayerTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          sliver: SliverList.builder(
            itemCount: notAcceptList.length,
            itemBuilder: (context, index) =>
                NotAcceptPrayerContainer(text: notAcceptList[index]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 22,
            vertical: 20,
          ),
          sliver: SliverToBoxAdapter(
            child: Text(
              kNotAccept,
              style: TextStyle(
                fontFamily: kSecondaryFont,
                fontSize: 16,
                height: 2,
              ),
            ),
          ),
        ),
        ConatantHightWidget(height: 70),
      ],
    );
  }
}
