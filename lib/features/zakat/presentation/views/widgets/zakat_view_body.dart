import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/zakat/presentation/views/zakat_view.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';

class ZakatViewBody extends StatelessWidget {
  const ZakatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        ConatantHightWidget(height: kHight3),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xff141212)
                  : Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              kZakatHadith,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xFFEEEEEE)
                    : kPrimaryColor,
              ),
            ),
          ),
        ),
        ConatantHightWidget(height: kHight2),
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xff373535)
                  : kPrimaryColor,
            ),
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 40,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Color(0xff8A1010)
                      : Colors.white.withOpacity(0.4),
                ),
                SizedBox(width: 10),
                Text(
                  kZakatShart,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        ConatantHightWidget(height: 40),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
          sliver: SliverList.builder(
            itemCount: zakatCategoris.length,
            itemBuilder: (context, index) => CustomZakatContainer(
              zakatCategoris: zakatCategoris,
              index: index,
            ),
          ),
        ),
        ConatantHightWidget(height: 20),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Color(0xff141212)
                        : kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 180,
                  height: 55,
                  child: Text(
                    'شروط الزكاة',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Color(0xff141212)
                        : kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: 180,
                  height: 55,
                  child: Text(
                    'مصارف الزكاة',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        ConatantHightWidget(height: 50),
      ],
    );
  }
}
