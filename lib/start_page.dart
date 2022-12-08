import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key, required this.changeLocale}) : super(key: key);

  final Function changeLocale;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff6ffff),
        body: SafeArea(
          child: Center(
              child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: Image.asset('assets/images/qushaq_name.png'),
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Image.asset('assets/images/qushaq_logo.png'),
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 45),
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                        foregroundColor: Colors.black,
                        backgroundColor: const Color(0xffEBEEFF),
                        side: const BorderSide(
                          color: Color(0xff8F99D6),
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text('Войти'.tr),
                    )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      textStyle: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w600),
                      backgroundColor: const Color(0xffB2BBEE),
                      side: const BorderSide(
                        color: Color(0xff8F99D6),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signupstepfirst');
                  },
                  child: Text(
                    'Создать аккаунт'.tr,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          widget.changeLocale('ru', 'RU');
                        },
                        child: const Text(
                          'Рус',
                          style: TextStyle(color: Colors.black),
                        )),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.black,
                    ),
                    TextButton(
                        onPressed: () {
                          widget.changeLocale('en', 'US');
                        },
                        child: const Text(
                          'Eng',
                          style: TextStyle(color: Colors.black),
                        )),
                    Container(
                      width: 1,
                      height: 20,
                      color: Colors.black,
                    ),
                    TextButton(
                      onPressed: () {
                        widget.changeLocale('kz', 'KZ');
                      },
                      child: const Text(
                        'Каз',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
