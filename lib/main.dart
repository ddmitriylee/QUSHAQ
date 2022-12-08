import 'package:flutter/material.dart';
import 'package:qushaq/login_page.dart';
import 'package:qushaq/slide_widget.dart';
import 'start_page.dart';
import 'register_first_page.dart';
import 'register_second_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qushaq/translator.dart';
import 'package:get/get.dart';
import 'register_third_step.dart';

void main() {
  runApp(GetMaterialApp(
    home: MyApp(),
    translations: WorldLanguage(), //Language class from world_languages.dart
    locale: Locale('ru', 'RU'), // translations will be displayed in that locale
    fallbackLocale: Locale('ru', 'RU'),
  ));
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
          textTheme: GoogleFonts.notoSansTextTheme(
        Theme.of(context).textTheme,
      )),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(changeLocale: changeLocale),
        '/login': (context) => LoginPage(),
        '/signupstepfirst': (context) => RegisterFirstPage(),
        '/signupstepsecond': (context) => RegisterSecondPage(),
        '/signupstepthird': (context) => RegisterThirdStep()
      },
      // onGenerateRoute: (RouteSettings settings) {
      //   print(settings);
      //   dynamic routes = {
      //     '/': SlideRightRoute(widget: StartPage(changeLocale: changeLocale)),
      //     '/login': SlideRightRoute(widget: LoginPage()),
      //     '/signupstepfirst': SlideRightRoute(widget: RegisterFirstPage()),
      //     '/signupstepsecond': SlideRightRoute(widget: RegisterSecondPage()),
      //     '/signupstepthird': SlideRightRoute(widget: RegisterThirdStep())
      //   };
      //   return routes[settings.name];
      // },
    );
  }
}
