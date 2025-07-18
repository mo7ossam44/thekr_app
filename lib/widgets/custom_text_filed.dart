import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/models/surah_model.dart';
import 'package:theker_app/widgets/custom_filter_surah_sliver_grid.dart';
import 'package:theker_app/widgets/sliver_hight_widget.dart';
import 'package:theker_app/widgets/surah_grid_view_builder.dart';

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
            color: Color(0xff373535),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'ابحث عن سوره',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.4),
                  fontFamily: kSecondaryFont,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.search, color: Colors.white.withOpacity(0.4)),
              SizedBox(width: 10),
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
    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
    filled: true,
    fillColor: Color(0xff1C1A1A),
    contentPadding: EdgeInsets.symmetric(horizontal: 16),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff1C1A1A)),
    ),
  );

  @override
  TextStyle? get searchFieldStyle =>
      TextStyle(color: Colors.white, fontSize: 18, fontFamily: kSecondaryFont);

  @override
  String? get searchFieldLabel => '                   ابحث باسم السورة'; // Placeholder text

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
    );

    // return Container(
    //   color: Color(0xff1C1A1A),
    //   child: IconButton(
    //     onPressed: () {
    //       close(context, null);
    //     },
    //     icon: Icon(Icons.arrow_back),
    //   ),
    // );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == '') {
      return Scaffold(
        backgroundColor: Color(0xff1C1A1A),
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