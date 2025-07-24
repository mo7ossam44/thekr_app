import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_cubit.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/widgets/azkar_list_view.dart';

class MorningAzkarViewBody extends StatefulWidget {
  const MorningAzkarViewBody({super.key});

  @override
  State<MorningAzkarViewBody> createState() => _MorningAzkarViewBodyState();
}

class _MorningAzkarViewBodyState extends State<MorningAzkarViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAzkarCubit>(context).getMorningAzkar();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAzkarCubit, GetAzkarStates>(
      builder: (context, state) {
        if (state is AzkarFaliure) {
          return const Center(child: Text('No Morning Azkar Now'));
        }
        bool isLoading = state is! AzkarSucess;
        var data = BlocProvider.of<GetAzkarCubit>(context).getData();
        return Skeletonizer(
          enabled: isLoading,
          child: AzkarListViewBuilder(data: data),
        );
      },
    );
  }
}

      // builder: (context, state) {
      //   if (state is AzkarSucess) {
      //     var data = BlocProvider.of<GetAzkarCubit>(context).getData();
      //     return AzkarListViewBuilder(data: data);
      //   } else if (state is AzkarFaliure) {
      //     return Center(child: Text('No Morning Azkar Now'));
      //   } else {
      //     return Skeletonizer(
      //     enabled: isLoading,
      //     child: AzkarListViewBuilder(data: data),
      //   );
      //   }
      // },