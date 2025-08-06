import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/azkar/presentation/views_model/azkar_model.dart';

class SingleReadyZekerView extends StatefulWidget {
  const SingleReadyZekerView({super.key, required this.morningAzkar});

  final AzkarModel morningAzkar;
  static const String routeName = 'singleReady';

  @override
  State<SingleReadyZekerView> createState() => _SingleReadyZekerViewState();
}

class _SingleReadyZekerViewState extends State<SingleReadyZekerView> {
  late int counterRepeaat;

  @override
  void initState() {
    counterRepeaat = widget.morningAzkar.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 20.w),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff007D45), Color.fromARGB(255, 166, 201, 189)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    cleanText(widget.morningAzkar.text),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: kSecondaryFont,
                      fontSize: 23,
                      height: 2.2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (counterRepeaat > 0) {
                        counterRepeaat--;
                      } else if (counterRepeaat < 0) {
                        counterRepeaat = 0;
                      } else {
                        null;
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 2, 162, 90),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          color: const Color.fromARGB(255, 161, 255, 213),
                          blurRadius: 10,
                          spreadRadius: 0.3,
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      counterRepeaat.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String cleanText(String text) {
    return text.replaceAll(RegExp(r'\s{2,}'), ' ').replaceAll('\n', ' ').trim();
  }
}
