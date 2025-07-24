import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:theker_app/constants.dart';
import 'package:theker_app/core/helper_function.dart';
import 'package:theker_app/cubits/add_zeker_cubit/add_zeker_cubit.dart';
import 'package:theker_app/cubits/get_azkar_cubit/get_azkar_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:theker_app/cubits/zeker_cubit/zeker_cubit.dart';
import 'package:theker_app/models/zeker_model.dart';
import 'package:theker_app/simple_bloc_observer.dart';
import 'package:theker_app/views/home_view.dart';
import 'package:theker_app/views/splash_view.dart';

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
        BlocProvider(create: (context) => ZekerCubit()),
        BlocProvider(create: (context) => GetAzkarCubit()),
      ],
      child: MaterialApp(
        locale: const Locale('ar'),
        supportedLocales: [Locale('ar')],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
          brightness: Brightness.dark,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.white.withOpacity(0.4),
          ),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: HomeView.routeName,
      ),
    );
  }
}
