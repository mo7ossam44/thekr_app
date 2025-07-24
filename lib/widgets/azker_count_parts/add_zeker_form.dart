import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';
import 'package:theker_app/models/zeker_model.dart';
import 'package:theker_app/widgets/azker_count_parts/cutom_zeker_text_form.dart';
import 'package:theker_app/cubits/add_zeker_cubit/add_zeker_cubit.dart';

class AddZekerForm extends StatefulWidget {
  const AddZekerForm({super.key});

  @override
  State<AddZekerForm> createState() => _AddZekerFormState();
}

class _AddZekerFormState extends State<AddZekerForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? zekerText;
  int? repeatedTime;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomZekerTextFormFiled(
            text: 'أضف ذكر',
            onSaved: (value) {
              zekerText = value;
            },
            type: TextInputType.name,
          ),
          const SizedBox(height: 40),
          CustomZekerTextFormFiled(
            text: 'أضف عدد التكرار',
            onSaved: (value) {
              repeatedTime = int.tryParse(value!);
            },
            type: TextInputType.number,
          ),
          const SizedBox(height: 40),
          MaterialButton(
            minWidth: 150,
            height: 45,
            color: kPrimaryColor,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                ZekerModel zekerModel = ZekerModel(
                  zekerText: zekerText!,
                  repratedTime: repeatedTime!,
                );
                BlocProvider.of<AddZekerCubit>(context).addZeker(zekerModel);
                BlocProvider.of<ZekerCubit>(context).fetchAllAzkar();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            child: const Text(
              'أضف البطاقة',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: kSecondaryFont,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
