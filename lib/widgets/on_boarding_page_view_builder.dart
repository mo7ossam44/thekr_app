import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/second_category_model.dart';
import 'package:theker_app/widgets/custom_app_bar.dart';

class OnBoardingPageViewBuilder extends StatelessWidget {
  const OnBoardingPageViewBuilder({super.key, required this.catygories});

  final List<SecondCategoryModel> catygories;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      reverse: true,
      itemCount: catygories.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CustomAppBarWidget(),
            Spacer(flex: 5),
            Image.asset(catygories[index].imagePath),
            SizedBox(height: 15),
            Text(
              catygories[index].title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: kSecondaryFont,
              ),
            ),
            SizedBox(height: 15),
            Text(
              catygories[index].subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
                fontFamily: kSecondaryFont,
              ),
            ),
            Spacer(flex: 5),
            MaterialButton(
              minWidth: 228,
              height: 57,
              color: kPrimaryColor,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(17),
              ),
              child: Text(
                catygories[index].textButton,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: kSecondaryFont,
                ),
              ),
            ),
            Spacer(),
          ],
        );
      },
    );
  }
}
