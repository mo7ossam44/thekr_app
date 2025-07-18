import 'dart:ui';
import 'package:theker_app/models/category_model.dart';
import 'package:theker_app/views/azkary_view.dart';
import 'package:theker_app/views/evening_azkar_view.dart';
import 'package:theker_app/views/morning_azkar_view.dart';
import 'package:theker_app/views/prayer_time_view.dart';
import 'package:theker_app/views/quran_view.dart';

const kPrimaryColor = Color(0xff007D45);
const kPrimaryFont = 'Marhey';
const kSecondaryFont = 'Tajawal';
const kHight1 = 20.0;
const kHight2 = 30.0;
const kHight3 = 10.0;
const kSalahHal =
    ' يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلي نفسى طرفة عين لا إله إلا أنت';
const kNeamaAfia =
    'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ، وَتَحَوُّلِ عَافِيَتِكَ، وَفُجَاءَةِ نِقْمَتِكَ، وَجَمِيعِ سَخَطِكَ';
const kSayedEstagfar =
    'اللَّهُمَّ أَنْتَ رَبِّي لاَ إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا   عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي، إِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ.';
const kFajrHadth =
    'قال رسول الله صلى الله عليه وسلم: (مَن صَلَّى الصُّبْحَ فَهو في ذِمَّةِ اللهِ، فلا يَطْلُبَنَّكُمُ اللَّهُ مِن ذِمَّتِهِ بشيءٍ فيُدْرِكَهُ فَيَكُبَّهُ في نَارِ جَهَنَّمَ).';
final List<CategoryModel> categoryModel = const [
  CategoryModel(
    targetPage: PrayerTimeView(),
    image: 'assets/images/time.png',
    name: 'أذكار بعد الصلاة',
  ),
  CategoryModel(
    targetPage: AzkarView(),
    image: 'assets/images/praying.png',
    name: 'أذكاري',
  ),
  CategoryModel(
    targetPage: QuranView(),
    image: 'assets/images/calendar.png',
    name: 'أذكار النوم',
  ),
  CategoryModel(
    targetPage: MorningAzkarView(),
    image: 'assets/images/halal.png',
    name: 'أذكار الصباح',
  ),
  CategoryModel(
    targetPage: AzkarView(),
    image: 'assets/images/qibla.png',
    name: 'أذكار الإستيقاظ',
  ),
  CategoryModel(
    targetPage: EveningAzkarView(),
    image: 'assets/images/infaq.png',
    name: 'أذكار المساء',
  ),
  CategoryModel(
    targetPage: AzkarView(),
    image: 'assets/images/infaq.png',
    name: 'أدعية شاملة',
  ),
  CategoryModel(
    targetPage: AzkarView(),
    image: 'assets/images/halal.png',
    name: 'الرقية الشرعية',
  ),
];
