import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/get_morning_azkar/get_morning_azkar_cubit.dart';
import 'package:theker_app/views/morning_azkar_view_body.dart';

class MorningAzkarView extends StatelessWidget {
  const MorningAzkarView({super.key});

  static const String routeName = 'morning';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetMorningAzkarCubit(),
      child: Scaffold(body: MorningAzkarViewBody()),
    );
  }
}
