import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/adad/presentation/views_model/zeker_model.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_states.dart';
import 'package:theker_app/features/adad/presentation/views/widgets/custom_zeker_container.dart';

class AzkarCountSliverGridBuilder extends StatelessWidget {
  const AzkarCountSliverGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ZekerCubit, ZekerStates>(
      builder: (context, state) {
        if (state is ZekerLoaded) {
          List<ZekerModel> azkar = state.zeker;
          if (azkar.isEmpty) {
            return SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        // color: Color(0xFFEEEEEE),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xff222020)
                            : Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'لا يوجد أذكار بعد، أضف بطاقة الآن!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(childCount: azkar.length, (
                context,
                index,
              ) {
                return CustomZekerContainer(azkar: azkar[index]);
              }),
            ),
          );
        } else {
          return Card();
        }
      },
    );
  }
}
