import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/widgets/add_zeker_form.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:theker_app/cubits/add_zeker_cubit/add_zeker_cubit.dart';
import 'package:theker_app/cubits/add_zeker_cubit/add_zeker_states.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddZekerCubit(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 360,
        child: BlocConsumer<AddZekerCubit, AddZekerStates>(
          listener: (context, state) {
            if (state is AddZekerFaliure) {
              userMessage(context, 'لم يتم إضافة البطاقة', Colors.red);
            }
            if (state is AddZekerSucess) {
              userMessage(context, 'تمت إضافة البطاقة', kPrimaryColor);
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddZekerLoading ? true : false,
              child: SingleChildScrollView(child: const AddZekerForm()),
            );
          },
        ),
      ),
    );
  }

  void userMessage(BuildContext context, String text, Color color) {
    return floatingSnackBar(
      message: text,
      context: context,
      textColor: Colors.white,
      textStyle: const TextStyle(
        color: Colors.white,
        fontFamily: kSecondaryFont,
      ),
      duration: const Duration(milliseconds: 4000),
      backgroundColor: color,
    );
  }
}
