import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/models/zeker_model.dart';
import 'package:theker_app/views/single_zeker_view.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';

class CustomZekerContainer extends StatefulWidget {
  const CustomZekerContainer({super.key, required this.azkar});

  final ZekerModel azkar;

  @override
  State<CustomZekerContainer> createState() => _CustomZekerContainerState();
}

class _CustomZekerContainerState extends State<CustomZekerContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        widget.azkar.delete();
        BlocProvider.of<ZekerCubit>(context).fetchAllAzkar();
      },
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return SingleZekerView(azkar: widget.azkar);
          },
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff007D45), Color(0xff688176)],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Text(
              widget.azkar.zekerText,
              maxLines: 1,
              style: TextStyle(
                fontFamily: kSecondaryFont,
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              '${widget.azkar.repratedTime}',
              style: TextStyle(
                fontFamily: kSecondaryFont,
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
