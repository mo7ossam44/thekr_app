import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class CustomTextFiledPrayer extends StatelessWidget {
  const CustomTextFiledPrayer({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: TextField(
        enabled: false,
        cursorHeight: 15,
        cursorColor: Colors.grey.shade400,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.location_on),
                    iconSize: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : kPrimaryColor,
                      fontFamily: kSecondaryFont,
                      fontSize: 20,
                      // backgroundColor: Color(0xff373535),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                color: Theme.of(context).iconTheme.color,
                icon: Icon(Icons.more_horiz_rounded),
              ),
            ],
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
