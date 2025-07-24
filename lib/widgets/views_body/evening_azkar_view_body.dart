import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_cubit.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/widgets/morning_azkar_list_view.dart';

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
        if (state is AzkarSucess) {
          var data = BlocProvider.of<GetAzkarCubit>(context).getevenData();
          return AzkarListViewBuilder(data: data);
        } else if (state is AzkarFaliure) {
          return Center(child: Text('No Even Azkar Now'));
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.green));
        }
      },
    );
  }
}
