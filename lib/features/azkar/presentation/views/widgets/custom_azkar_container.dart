import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/views_model/azkar_model.dart';
import 'package:theker_app/features/azkar/presentation/views/single_ready_zeker_view.dart';

class CustomAzkarContainerCard extends StatelessWidget {
  const CustomAzkarContainerCard({super.key, required this.morningAzkar});

  final AzkarModel morningAzkar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return SingleReadyZekerView(morningAzkar: morningAzkar);
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerRight,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'عدد مرات التكرار  ⇐  ${morningAzkar.count.toString()}',
                  style: TextStyle(
                    fontFamily: kSecondaryFont,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  cleanText(morningAzkar.text),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String cleanText(String input) {
    return input
        .replaceAll(RegExp(r'\s+'), ' ') // يشيل الفراغات الكتير
        .replaceAll('\n', ' ')
        .trim();
  }
}
