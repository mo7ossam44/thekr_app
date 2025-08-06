import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/manger/get_azkar_cubit/get_azkar_cubit.dart';
import 'package:theker_app/features/azkar/presentation/manger/get_azkar_cubit/get_azkar_states.dart';
import 'package:theker_app/features/azkar/presentation/views/widgets/azkar_list_view.dart';

class HajOmraAzkarView extends StatelessWidget {
  const HajOmraAzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أدعية الحج والعمره',
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: kAppBarFontSize,
          ),
        ),
        // elevation: 0,
        // backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: HajOmraAzkarViewBody(),
    );
  }
}

class HajOmraAzkarViewBody extends StatefulWidget {
  const HajOmraAzkarViewBody({super.key});

  @override
  State<HajOmraAzkarViewBody> createState() => _HajOmraAzkarViewBodyState();
}

class _HajOmraAzkarViewBodyState extends State<HajOmraAzkarViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetAzkarCubit>(
      context,
    ).getAzkarCubit(categoryAzkarCubit: 'hajj_and_umrah_azkar');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAzkarCubit, GetAzkarStates>(
      builder: (context, state) {
        if (state is AzkarFaliure) {
          return const Center(child: Text('No haj or omra Azkar Now'));
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
