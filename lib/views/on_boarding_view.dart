import 'package:flutter/material.dart';
import 'package:theker_app/models/second_category_model.dart';
import 'package:theker_app/widgets/on_boarding_page_view_builder.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'onBoardingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingBody());
  }
}

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  final List<SecondCategoryModel> catygories = const [
    SecondCategoryModel(
      imagePath: 'assets/images/on_boarding_view_images/qurann.png',
      title: 'المصحف',
      subtitle: 'اقرأ القرأن الكريم, نظم وردك اليومي, وحدد مدة ختمتك',
      textButton: 'استمر',
    ),
    SecondCategoryModel(
      imagePath: 'assets/images/on_boarding_view_images/prayerrrs.png',
      title: 'مواقيت الصلاة',
      subtitle: 'تابع مواقيت الصلاة بدقة اينما كنت, مع تنبيهات لكل صلاة',
      textButton: 'استمر',
    ),
    SecondCategoryModel(
      imagePath: 'assets/images/on_boarding_view_images/azkaree.png',
      title: 'أذكاري',
      subtitle:
          'مجموعة من الاذكار اليوميه, بالاضافه الى مكان للاحتفاظ باذكارك الخاصه',
      textButton: 'استمر',
    ),
    SecondCategoryModel(
      imagePath: 'assets/images/on_boarding_view_images/qiblaaa.png',
      title: 'القبلة',
      subtitle: 'تحديد اتجاه القبله بدقه في اي وقت واي مكان',
      textButton: 'استمر',
    ),
    SecondCategoryModel(
      imagePath: 'assets/images/on_boarding_view_images/explorrrree.png',
      title: 'استكشف المزيد',
      subtitle: 'إستخدم التطبيق واكتشف المزيد من المزايا',
      textButton: 'إبدأ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff373535), Color(0xff1B1919)],
        ),
      ),
      child: OnBoardingPageViewBuilder(catygories: catygories),
    );
  }
}
