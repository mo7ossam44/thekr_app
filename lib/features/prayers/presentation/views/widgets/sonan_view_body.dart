import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/prayers/presentation/views/widgets/main_row_widget.dart';

class SonanViewBody extends StatelessWidget {
  const SonanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xFF1E1E1E)
                    : Color(0xFFEEEEEE),
                //  Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(23),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23),
                      ),
                    ),
                    child: MainRowWidget(),
                  ),
                  SizedBox(height: 5),
                  buildRow('2', 'فجر', '0', context),
                  SonanDividerWidget(),
                  buildRow('4', 'ظهر', '2', context),
                  SonanDividerWidget(),
                  buildRow('0', 'عصر', '0', context),
                  SonanDividerWidget(),
                  buildRow('0', 'مغرب', '2', context),
                  SonanDividerWidget(),
                  buildRow('0', 'عشاء', '2', context),
                ],
              ),
            ),
            // Colors.white24
            SizedBox(height: 50),
            Text(
              style: TextStyle(
                fontFamily: kSecondaryFont,
                fontSize: 16,
                letterSpacing: 1.1,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
              kSonan1,
            ),
            SizedBox(height: 20),
            Text(
              style: TextStyle(
                fontFamily: kSecondaryFont,
                fontSize: 16,
                letterSpacing: 1.1,
                height: 1.4,
                fontWeight: FontWeight.bold,
              ),
              kSonan2,
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }

  Widget buildRow(
    String before,
    String prayer,
    String after,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            before,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : kPrimaryColor,
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(
            prayer,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: kSecondaryFont,
            ),
          ),
          Text(
            after,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : kPrimaryColor,
              fontFamily: kSecondaryFont,
            ),
          ),
        ],
      ),
    );
  }
}

class SonanDividerWidget extends StatelessWidget {
  const SonanDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white24
          : kPrimaryColor,
    );
  }
}
