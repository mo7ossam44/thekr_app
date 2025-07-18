
import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class KetmaContainerWidget extends StatelessWidget {
  const KetmaContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      color: kPrimaryColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.white,
            iconSize: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'الختمة  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: kSecondaryFont,
                  ),
                ),
                Image.asset(
                  'assets/images/categories_images/Moshaf.png',
                  color: Colors.white,
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
