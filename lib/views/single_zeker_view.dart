import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/zeker_model.dart';

class SingleZekerView extends StatelessWidget {
  const SingleZekerView({super.key, required this.azkar});

  final ZekerModel azkar;

  static const String routeName = 'singleZeker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleZekerViewBody(azkar: azkar));
  }
}

class SingleZekerViewBody extends StatefulWidget {
  const SingleZekerViewBody({super.key, required this.azkar});

  final ZekerModel azkar;

  @override
  State<SingleZekerViewBody> createState() => _SingleZekerViewBodyState();
}

class _SingleZekerViewBodyState extends State<SingleZekerViewBody> {
  late int repeatesCounter;

  @override
  void initState() {
    repeatesCounter = widget.azkar.repratedTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (repeatesCounter > 0) {
            repeatesCounter--;
          } else if (repeatesCounter < 0) {
            repeatesCounter = 0;
          } else {
            null;
          }
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff007D45), Color(0xff688176)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        repeatesCounter = widget.azkar.repratedTime;
                      });
                    },
                    icon: Image.asset(
                      'assets/images/categories_images/ector.png',
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
              Text(
                textAlign: TextAlign.center,
                widget.azkar.zekerText,
                style: TextStyle(
                  fontFamily: kSecondaryFont,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                '$repeatesCounter',
                style: TextStyle(
                  fontFamily: kSecondaryFont,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
