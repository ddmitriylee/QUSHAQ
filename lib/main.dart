import 'package:flutter/material.dart';
import 'package:qushaq/login_page.dart';
import 'start_page.dart';
import 'register_first_page.dart';
import 'register_second_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qushaq/translator.dart';
import 'package:get/get.dart';


void main() {
  runApp(
      GetMaterialApp(
        home: MyApp(),
        translations: WorldLanguage(), //Language class from world_languages.dart
        locale: Locale('en', 'US'), // translations will be displayed in that locale
        fallbackLocale: Locale('en', 'US'),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void changeLocale(String lang, String country) {
    Get.updateLocale(Locale(lang, country));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        )
      ),
      // home: StartPage(changeLocale:changeLocale),
      initialRoute: '/',
      routes: {
        '/' : (context) => StartPage(changeLocale:changeLocale),
        '/login' : (context) => LoginPage(),
        '/signupstepfirst' : (context) => RegisterFirstPage(),
        '/signupstepsecond' : (context) => RegisterSecondPage(),
      },
    );
  }
}
