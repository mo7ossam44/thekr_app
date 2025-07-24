import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_states.dart';
import 'package:theker_app/models/zeker_model.dart';
import 'package:theker_app/widgets/azker_count_parts/custom_zeker_container.dart';

class AzkarCountSliverGridBuilder extends StatelessWidget {
  const AzkarCountSliverGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ZekerCubit, ZekerStates>(
      builder: (context, state) {
        if (state is ZekerLoaded) {
          List<ZekerModel> azkar = state.zeker;
          if (azkar.isEmpty) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 270),
                  child: Text(
                    'لا يوجد أذكار بعد، أضف بطاقة الآن!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontFamily: kSecondaryFont,
                    ),
                  ),
                ),
              ),
            );
          }
          return SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(childCount: azkar.length, (
                context,
                index,
              ) {
                return CustomZekerContainer(azkar: azkar[index]);
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2,
              ),
            ),
          );
        } else {
          return Card();
        }
      },
    );
  }
}
