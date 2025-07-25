import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_cubit.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/widgets/azkar_list_view.dart';

class EveningAzkarViewBody extends StatefulWidget {
  const EveningAzkarViewBody({super.key});

  @override
  State<EveningAzkarViewBody> createState() => _EveningAzkarViewBodyState();
}

class _EveningAzkarViewBodyState extends State<EveningAzkarViewBody> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAzkarCubit>(context).getEveningAzkar();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAzkarCubit, GetAzkarStates>(
       builder: (context, state) {
        if (state is AzkarFaliure) {
          return const Center(child: Text('No Evening Azkar Now'));
        }
        bool isLoading = state is! AzkarSucess;
        var data = BlocProvider.of<GetAzkarCubit>(context).getevenData();
        return Skeletonizer(
          enabled: isLoading,
          child: AzkarListViewBuilder(data: data),
        );
      },
    );
  }
}
