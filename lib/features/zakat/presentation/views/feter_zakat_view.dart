import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';

class FeterZakatView extends StatelessWidget {
  const FeterZakatView({super.key});

  static const String routeName = 'feter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'زكاة الفطر',
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
      body: FeterZakatViewBody(),
    );
  }
}

class FeterZakatViewBody extends StatefulWidget {
  const FeterZakatViewBody({super.key});

  @override
  State<FeterZakatViewBody> createState() => _FeterZakatViewBodyState();
}

class _FeterZakatViewBodyState extends State<FeterZakatViewBody> {
  final TextEditingController _familyCountController = TextEditingController();
  final double zakahPerPerson = 35.0;

  double totalZakah = 0;

  void calculateZakah() {
    final count = int.tryParse(_familyCountController.text) ?? 0;
    setState(() {
      totalZakah = count * zakahPerPerson;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ConatantHightWidget(height: 30),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('عدد أفراد الأسرة', style: TextStyle(fontSize: 15)),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 160,
                    height: 70,
                    child: TextField(
                      controller: _familyCountController,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      onSubmitted: (value) {
                        calculateZakah();
                      },
                      cursorHeight: 20,
                      showCursor: false,
                      decoration: InputDecoration(
                        fillColor:
                            Theme.of(context).brightness == Brightness.dark
                            ? Color(0xff141212)
                            : Color(0xFFEEEEEE),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  Text('', style: TextStyle(fontSize: 15)),
                ],
              ),
              Text(
                '×',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('قيمة الزكاة للفرد', style: TextStyle(fontSize: 15)),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 160,
                    height: 70,
                    child: TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: '         35 جنيهاً',
                        hintStyle: TextStyle(fontSize: 16),
                        fillColor:
                            Theme.of(context).brightness == Brightness.dark
                            ? Color(0xff141212)
                            : Color(0xFFEEEEEE),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'حسب دار الإفتاء المصرية',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ConatantHightWidget(height: 10),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('المبلغ الواحب إخراجه', style: TextStyle(fontSize: 15)),
                SizedBox(height: 10),
                SizedBox(
                  height: 70,
                  child: TextFormField(
                    showCursor: false,
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: "${totalZakah.toStringAsFixed(2)} جنيهاً",
                      fillColor: Theme.of(context).brightness == Brightness.dark
                          ? Color(0xff141212)
                          : Color(0xFFEEEEEE),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ConatantHightWidget(height: 40),
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 160,
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xff373535)
                  : kPrimaryColor,
            ),
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 160,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Color(0xff8A1010)
                      : Colors.white.withOpacity(0.4),
                ),
                SizedBox(width: 10),
                Text(
                  kFeterHadith,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        ConatantHightWidget(height: 25),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color(0xff141212)
                  : Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              kFeterHadith2,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xFFEEEEEE)
                    : kPrimaryColor,
              ),
            ),
          ),
        ),
        ConatantHightWidget(height: 40),
      ],
    );
  }
}
