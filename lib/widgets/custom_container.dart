import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/views/quran_view.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(QuranView.routeName);
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Color(0xFFFFFF), kPrimaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        padding: EdgeInsets.all(2), // السماكة الخارجية للحد
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF1C1C1C),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'المصحف',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                ),
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/images/categories_images/Moshaf.png',
                color: kPrimaryColor,
                width: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Container(
//       width: 350,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Color(0xff222020),
//         borderRadius: BorderRadius.circular(16),
//         border: Border(
//           bottom: BorderSide(color: Color(0xff00E37D)),
//           right: BorderSide(color: Color(0xff00E37D)),
//           top: BorderSide(color: Color(0xff00E37D)),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   fontFamily: kSecondaryFont,
//                   color: kPrimaryColor,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             Image.asset(
//               'assets/images/categories_images/Moshaf.png',
//               color: kPrimaryColor,
//               width: 40,
//             ),
//           ],
//         ),
//       ),
//     );