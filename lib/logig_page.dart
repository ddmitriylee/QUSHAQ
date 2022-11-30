import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
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
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Positioned(
              bottom: 50,
              right: 10,

              child: Image.asset('assets/images/logo.png',)
          ),
          // Container(height: 150.0, color: Colors.yellow),
          Container(
            width: 500,
            padding : const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(178, 187, 238, 1),
            ),
            child: InkWell(
              child: Align(
                  alignment: Alignment.center,

                  child:Text('Создать аккаунт',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  )
              ),
              onTap: () {
                print('tapped');
              },
            ),


          ),
        ],
      ),
    ); // This trailing comma mak +es auto-formatting nicer for build methods.
  }
}



