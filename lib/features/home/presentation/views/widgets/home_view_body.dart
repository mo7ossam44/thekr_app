import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/home/presentation/views/widgets/audio_player_widget.dart';
import 'package:theker_app/features/home/presentation/views/widgets/sliver_app_bar_widget.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';
import 'package:theker_app/features/home/presentation/views/widgets/sliver_grid_builder.dart';
import 'package:theker_app/features/home/presentation/views/widgets/tab_bar_widget.dart';
import 'package:theker_app/features/home/presentation/views/widgets/custom_container.dart';
import 'package:theker_app/features/home/presentation/views/widgets/doaa_widget-home_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverAppBarWidget(),
        TabBarWidget(),
        ConatantHightWidget(height: kHight1),
        CustomContainer(text: 'المصحف'),
        ConatantHightWidget(height: kHight3),
        SliverGridBuilder(categoryModel: categoryModel),
        ConatantHightWidget(height: kHight2),
        DoaaContainerHomeView(title: 'سيد الاستغفار', subtitle: kSayedEstagfar),
        ConatantHightWidget(height: kHight1),
        DoaaContainerHomeView(title: 'النعم والعافية', subtitle: kNeamaAfia),
        ConatantHightWidget(height: kHight1),
        DoaaContainerHomeView(title: 'صلاح الحال', subtitle: kSalahHal),
        ConatantHightWidget(height: kHight1),
        DoaaContainerHomeView(title: 'سجود التلاوة', subtitle: kSjudTelawa),
        ConatantHightWidget(height: kHight1),
        DoaaContainerHomeView(
          title: 'الصلاة الإبراهيمية',
          subtitle: kIbrahimiaSalat,
        ),
        ConatantHightWidget(height: kHight1),
        AudioPlayerWodget(),
        ConatantHightWidget(height: kHight1),
        AudioPlayerWodget(),
        ConatantHightWidget(height: 50),
      ],
    );
  }
}

