import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/zakat/presentation/views/feter_zakat_view.dart';
import 'package:theker_app/features/zakat/presentation/views/widgets/zakat_view_body.dart';

class ZakatView extends StatelessWidget {
  const ZakatView({super.key});

  static const String routeName = 'zakat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الزكاة',
          style: TextStyle(
            fontFamily: kSecondaryFont,
            fontSize: kAppBarFontSize,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ZakatViewBody(),
    );
  }
}

class CustomZakatContainer extends StatelessWidget {
  const CustomZakatContainer({
    super.key,
    required this.zakatCategoris,
    required this.index,
  });

  final int index;
  final List<String> zakatCategoris;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(FeterZakatView.routeName),
      child: Container(
        height: 40,
        alignment: Alignment.centerRight,
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.only(right: 15, left: 15),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xff373535)
              : Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              zakatCategoris[index],
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xFFEEEEEE)
                    : kPrimaryColor,
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
