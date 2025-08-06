import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/features/azkar/presentation/manger/get_azkar_cubit/get_azkar_cubit.dart';
import 'package:theker_app/features/azkar/presentation/manger/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/azkar_list_view.dart';

class GeneralAzkarViewBody extends StatefulWidget {
  const GeneralAzkarViewBody({super.key});

  @override
  State<GeneralAzkarViewBody> createState() => _GeneralAzkarViewBodyState();
}

class _GeneralAzkarViewBodyState extends State<GeneralAzkarViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAzkarCubit>(
      context,
    ).getAzkarCubit(categoryAzkarCubit: 'miscellaneous_azkar');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAzkarCubit, GetAzkarStates>(
      builder: (context, state) {
        if (state is AzkarFaliure) {
          return const Center(child: Text('No General Azkar Now'));
        }
        bool isLoading = state is! AzkarSucess;
        var data = BlocProvider.of<GetAzkarCubit>(context).azkarCubitList;
        return Skeletonizer(
          enabled: isLoading,
          child: AzkarListViewBuilder(data: data),
        );
      },
    );
  }
}