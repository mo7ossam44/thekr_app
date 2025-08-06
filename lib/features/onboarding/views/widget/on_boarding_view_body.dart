import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/home/presentation/views/home_view.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  void nextPage() {
    if (currentPage < catygories.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.all(10),
            child: PageView.builder(
              controller: _pageController,
              itemCount: catygories.length,
              onPageChanged: (int index) {
                setState(() => currentPage = index);
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(catygories[index].imagePath),
                    SizedBox(height: 15),
                    Text(
                      catygories[index].title,
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
                      catygories[index].subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : kPrimaryColor,
                        fontSize: 16,
                        fontFamily: kSecondaryFont,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
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
        ),
        ConatantHightWidget(height: 40),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
          sliver: SliverToBoxAdapter(
            child: MaterialButton(
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
          ),
        ),
      ],
    );
  }
}
