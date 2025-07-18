import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/get_morning_azkar/get_morning_azkar_cubit.dart';
import 'package:theker_app/cubits/get_morning_azkar/get_morning_azkar_states.dart';
import 'package:theker_app/models/morning_azkar_model.dart';
import 'package:theker_app/services/morning_azkar_service.dart';
import 'package:theker_app/widgets/custom_azkar_container.dart';

class MorningAzkarViewBody extends StatefulWidget {
  const MorningAzkarViewBody({super.key});

  @override
  State<MorningAzkarViewBody> createState() => _MorningAzkarViewBodyState();
}

class _MorningAzkarViewBodyState extends State<MorningAzkarViewBody> {
  // List<MorningAzkarModel> morningAzkar = [];

  @override
  void initState() {
    super.initState();
    // getMorningAzkar();
    BlocProvider.of<GetMorningAzkarCubit>(context).getMorningAzkar();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMorningAzkarCubit, GetMorningAzkarStates>(
      builder: (context, state) {
        if (state is MorningAzkarSucess) {
          var data = BlocProvider.of<GetMorningAzkarCubit>(context).getData();
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return CustomAzkarContainerCard(morningAzkar: data[index]);
            },
          );
        } else if (state is MorningAzkarFaliure) {
          return Center(child: Text('No Morning Azkar Now'));
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.green));
        }
      },
    );
  }
}
