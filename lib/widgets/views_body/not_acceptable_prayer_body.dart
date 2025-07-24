import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/widgets/not_acceptable_container.dart';

class NotAcceptablePrayerTimeViewBody extends StatelessWidget {
  const NotAcceptablePrayerTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView.builder(
        itemCount: notAcceptList.length,
        itemBuilder: (context, index) =>
            NotAcceptPrayerContainer(text: notAcceptList[index]),
      ),
    );
  }
}