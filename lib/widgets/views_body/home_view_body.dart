import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/home_parts/app_bar_home_view.dart';
import 'package:theker_app/widgets/home_parts/custom_container.dart';
import 'package:theker_app/widgets/home_parts/doaa_widget-home_view.dart';
import 'package:theker_app/widgets/sliver_grid_builder.dart';
import 'package:theker_app/widgets/sliver_hight_widget.dart';
import 'package:theker_app/widgets/home_parts/tab_bar_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        ConatantHightWidget(height: kHight1),
        CustomAppBarHomeView(),
        ConatantHightWidget(height: kHight1),
        TabBarWidget(),
        ConatantHightWidget(height: kHight1),
        CustomContainer(text: 'المصحف'),
        ConatantHightWidget(height: kHight3),
        SliverGridBuilder(categoryModel: categoryModel),
        ConatantHightWidget(height: kHight2),
        DoaaContainerHomeView(
          title: 'سيد الاستغفار',
          subtitle: kSayedEstagfar,
        ),
        ConatantHightWidget(height: kHight1),
        DoaaContainerHomeView(title: 'النعم والعافية', subtitle: kNeamaAfia),
        ConatantHightWidget(height: kHight1),
        DoaaContainerHomeView(title: 'صلاح الحال', subtitle: kSalahHal),
      ],
    );
  }
}
