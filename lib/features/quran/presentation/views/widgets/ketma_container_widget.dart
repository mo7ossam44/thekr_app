import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';

class KetmaContainerWidget extends StatelessWidget {
  const KetmaContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 35,
        color: kPrimaryColor,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/categories_images/Moshaf.png',
                    color: Colors.white,
                    width: 40,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'الختمة',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: kSecondaryFont,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_rounded),
              color: Colors.white,
              iconSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
