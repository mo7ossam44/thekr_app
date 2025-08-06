import 'package:flutter/material.dart';
import 'package:theker_app/constants.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theker_app/features/home/presentation/views/home_view.dart';
import 'package:theker_app/features/adad/presentation/views_model/zeker_model.dart';
import 'package:theker_app/core/helper_function.dart';
import 'package:theker_app/simple_bloc_observer.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:theker_app/cubits/app_theme_cubit/theme_cubit.dart';
import 'package:theker_app/cubits/app_theme_cubit/theme_states.dart';
import 'package:theker_app/features/azkar/presentation/manger/get_azkar_cubit/get_azkar_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ZekerModelAdapter());
  await Hive.openBox<ZekerModel>(kAzkarBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const ThkerApp());
}

class ThkerApp extends StatelessWidget {
  const ThkerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
        BlocProvider(create: (context) => ZekerCubit()),
        BlocProvider(create: (context) => GetAzkarCubit()),
      ],
      child: BlocBuilder<AppCubit, ThemeStates>(
        builder: (context, state) {
          return MaterialApp(
            locale: const Locale('ar'),
            supportedLocales: [Locale('ar')],
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: Colors.white,
              ),
              brightness: Brightness.light,
              scaffoldBackgroundColor: Color(0xFFFDFDFD),
              primaryColor: kPrimaryColor,
              textTheme: TextTheme(
                bodyLarge: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                  height: 1.8,
                ),
                bodyMedium: TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                  height: 1.8,
                ),
                bodySmall: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                  height: 1.8,
                ),
              ),
              iconTheme: const IconThemeData(color: kPrimaryColor),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Color(0xFFEEEEEE),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
              cardColor: Color(0xFFEEEEEE),
              appBarTheme: const AppBarTheme(
                backgroundColor: kPrimaryColor,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white),
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: kAppBarFontSize,
                  fontWeight: FontWeight.bold,
                ),
                centerTitle: true,
              ),
            ),
            darkTheme: ThemeData(
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: Colors.white, // ← هنا بيتغير لون المؤشر
              ),
              brightness: Brightness.dark,
              primaryColor: const Color(0xff1C1A1A),
              scaffoldBackgroundColor: const Color(0xff1C1A1A),
              cardColor: Color(0xff222020),
              appBarTheme: AppBarTheme(
                backgroundColor: Color(0xff1C1A1A),
                iconTheme: IconThemeData(color: Colors.white),
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: kAppBarFontSize,
                  fontWeight: FontWeight.bold,
                ),
                centerTitle: true,
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Color(0xff373535),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
              textTheme: TextTheme(
                bodyLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                  height: 1.8,
                ),
                bodyMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                  height: 1.8,
                ),
                bodySmall: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: kSecondaryFont,
                  height: 1.8,
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            themeMode: AppCubit.get(context).getTheme(),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: onGenerateRoute,
            initialRoute: HomeView.routeName,
          );
        },
      ),
    );
  }
}
