import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {

  LoginPage({Key? key, required this.changeLocale}) : super(key: key);

  final Function changeLocale;

  @override
  State<LoginPage> createState() => _LoginPageState();
 }

 class _LoginPageState extends State<LoginPage> {
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
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Image.asset('assets/images/qushaq_logo.png'),
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 45),
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
                            borderRadius: BorderRadius.circular(12.0)
                        ),
                      ),
                      onPressed: () { print("login"); },
                      child: Text('Войти'.tr),
                    )
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                      backgroundColor: const Color(0xffB2BBEE),
                      side: const BorderSide(
                        color: Color(0xff8F99D6),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)
                      )
                  ),
                  onPressed: () { print("OK"); },
                  child: Text('Создать аккаунт'.tr),
                ),
                TextButton(
                  child: Text("Проблемы со входом в аккаунт?".tr,
                      style: TextStyle(
                          color: Color(0xffB5B5B5),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      )
                  ),
                  onPressed: () { print('textbutton'); },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          widget.changeLocale('ru', 'RU');
                        },
                        child: const Text(
                          'RU',
                          style: TextStyle(
                            color: Colors.black
                          ),
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          widget.changeLocale('en', 'US');
                        },
                        child: const Text(
                          'EN',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        )
                    ),
                    TextButton(
                        onPressed: () {
                          widget.changeLocale('kz', 'KZ');
                        },
                        child: const Text(
                          'KZ',
                          style: TextStyle(
                              color: Colors.black
                          ),
                        )
                    )
                  ],
                )
              ],
            ),
          )
        ),
      )
    );
  }
 }