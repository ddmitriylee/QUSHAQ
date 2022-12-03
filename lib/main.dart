import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/translator.dart';


void main() {
  runApp(
      GetMaterialApp(
        home: MyApp(),
        translations: WorldLanguage(), //Language class from world_languages.dart
        locale: Locale('ru', 'RU'), // translations will be displayed in that locale
        fallbackLocale: Locale('ru', 'Ru'),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QUSHAQ',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: Colors.indigo,
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          )
      ),
      home: const MyHomePage(title: 'QUSHAQ'),
    );
  }
}
//
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: FractionallySizedBox(
          widthFactor: 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset('assets/images/logo.png'),
                    margin: EdgeInsets.only(bottom: 40.0)
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding : const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 2.0, color: Color.fromRGBO(143, 153, 214, 1)),
                    color: Color.fromRGBO(178, 187, 238, 1),
                  ),
                  child: InkWell(
                    child: Align(
                        alignment: Alignment.center,
                        child:Text('Создать аккаунт'.tr,
                          style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
                        )
                    ),
                    onTap: () {
                      print('tapped');
                    },
                  ),
                ),
                Container(
                  padding : const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 2.0, color: Color.fromRGBO(143, 153, 214, 1)),
                    color: Color.fromRGBO(235, 238, 255, 1),
                  ),
                  child: InkWell(
                    child: Align(
                        alignment: Alignment.center,

                        child:Text('Войти в аккаунт'.tr,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        )
                    ),
                    onTap: () {
                      print('tapped');
                    },
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  height: 50,
                  padding : const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),

                  child: InkWell(
                    child: Align(
                      // alignment: Alignment.center,

                        child:Text('Проблемы со входом в аккаунт?'.tr,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        )
                    ),
                    onTap: () {
                      print('tapped');
                    },
                  ),

                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 40,
                        child: TextButton(
                          child: Text(
                            "Қаз",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          onPressed: () {
                            var locale = Locale('kz', 'KZ');
                            Get.updateLocale(locale);
                          },

                        ),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.black,
                      ),
                      Container(
                        width: 65,
                        height: 40,
                        child: TextButton(
                          child: Text(
                            "Рус",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          onPressed: () {
                            var locale = Locale('ru', 'RU');
                            Get.updateLocale(locale);
                          },

                        ),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        color: Colors.black,
                      ),
                      Container(
                        width: 65,
                        height: 40,
                        child: TextButton(
                          child: Text(
                            "Eng",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          onPressed: () {
                            var locale = Locale('en', 'US');
                            Get.updateLocale(locale);
                          },

                        ),
                      )
                    ]
                )
              ],
            )
        )
    ); // This trailing comma mak +es auto-formatting nicer for build methods.
  }
}



