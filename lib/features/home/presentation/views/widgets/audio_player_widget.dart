import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class AudioPlayerWodget extends StatefulWidget {
  AudioPlayerWodget({super.key});

  @override
  State<AudioPlayerWodget> createState() => _AudioPlayerWodgetState();
}

class _AudioPlayerWodgetState extends State<AudioPlayerWodget> {
  final player = AudioPlayer();

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'تسجــيــل من ســورة الفــرقــان',
                  style: TextStyle(
                    fontFamily: kSecondaryFont,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isOpened = !isOpened;
                        });
                        isOpened
                            ? player.play(AssetSource('voices/voice1.wav'))
                            : player.resume();
                      },
                      icon: isOpened
                          ? Icon(Icons.stop)
                          : Icon(Icons.play_arrow_sharp),
                    ),
                    Text(
                      'القــارئ محــمد حســام من سورة الفرقان',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
