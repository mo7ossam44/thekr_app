import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/features/quran/presentation/views_model/surah_model.dart';
import 'package:theker_app/core/sliver_hight_widget.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/surah_grid_view_builder.dart';
import 'package:theker_app/features/quran/presentation/views/widgets/custom_filter_surah_sliver_grid.dart';

class CustomTextFiledAppBar extends StatelessWidget {
  const CustomTextFiledAppBar({super.key, required this.surah});

  final List<SurahModel> surah;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          showSearch(
            context: context,
            delegate: CustomSearch(surah: surah),
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          height: 40,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? Color(0xff373535)
                : kSecondaryColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(
                Icons.search,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white.withOpacity(0.4)
                    : kPrimaryColor,
              ),
              SizedBox(width: 10),
              Text(
                'ابحث عن سوره',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white.withOpacity(0.4)
                      : kPrimaryColor,
                  fontFamily: kSecondaryFont,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  CustomSearch({required this.surah});

  @override
  InputDecorationTheme get searchFieldDecorationTheme => InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.white, fontSize: 18),
    filled: true,
    fillColor: kPrimaryColor,
    contentPadding: EdgeInsets.symmetric(horizontal: 16),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );

  @override
  TextStyle? get searchFieldStyle =>
      TextStyle(color: Colors.white, fontSize: 18, fontFamily: kSecondaryFont);

  @override
  String? get searchFieldLabel => 'ابحث باسم السورة';

  final List<SurahModel> surah;
  List? filterSurah;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : kPrimaryColor,
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : kPrimaryColor,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == '') {
      return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Color(0xff1C1A1A)
            : Color(0xFFEEEEEE),
        body: CustomScrollView(
          slivers: [
            ConatantHightWidget(height: 40),
            SurahSliverGridBuilder(surah: surah),
          ],
        ),
      );
    } else {
      filterSurah = surah
          .where((element) => element.arabic.toLowerCase().contains(query))
          .toList();
      return CustomFilterListWithSliverGrid(filterSurah: filterSurah);
    }
  }
}



// TextField(
//         cursorHeight: 15,
//         cursorColor: Colors.white.withOpacity(0.4),
//         textDirection: TextDirection.rtl,
//         decoration: InputDecoration(
//           filled: true,
//           fillColor: Color(0xff373535),
//           hintText: '     ابحث عن سوره',
//           suffixIcon: IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.search),
//             iconSize: 20,
//             color: Colors.white.withOpacity(0.4),
//           ),
//           hintStyle: TextStyle(
//             color: Colors.white.withOpacity(0.4),
//             fontFamily: kSecondaryFont,
//             fontSize: 15,
//             backgroundColor: Color(0xff373535),
//           ),
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//         ),
//       ),