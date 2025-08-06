import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/onboarding/views_model/second_category_model.dart';

class OnBoardingPageViewBuilder extends StatefulWidget {
  const OnBoardingPageViewBuilder({super.key, required this.catygories});

  final List<SecondCategoryModel> catygories;

  @override
  State<OnBoardingPageViewBuilder> createState() =>
      _OnBoardingPageViewBuilderState();
}

class _OnBoardingPageViewBuilderState extends State<OnBoardingPageViewBuilder> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  void nextPage() {
    if (currentPage < catygories.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacementNamed(context, 'home');
    }
  }

  void skip() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.catygories.length,
      onPageChanged: (int index) {
        setState(() => currentPage = index);
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            Spacer(flex: 5),
            Image.asset(widget.catygories[index].imagePath),
            SizedBox(height: 15),
            Text(
              widget.catygories[index].title,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : kPrimaryColor,
                fontSize: 20,
                fontFamily: kSecondaryFont,
              ),
            ),
            SizedBox(height: 15),
            Text(
              widget.catygories[index].subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : kPrimaryColor,
                fontSize: 16,
                fontFamily: kSecondaryFont,
              ),
            ),
            Spacer(flex: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                catygories.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == index ? kPrimaryColor : Colors.grey,
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
            MaterialButton(
              minWidth: 228,
              height: 57,
              color: kPrimaryColor,
              onPressed: nextPage,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(17),
              ),
              child: Text(
                currentPage == catygories.length - 1 ? 'إبدأ' : 'استمر',
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
