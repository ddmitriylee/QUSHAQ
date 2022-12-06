import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'qushaq_app_bar.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPagestate();
}

class _LoginPagestate extends State<LoginPage>{

  bool password_status = true;
  String login = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: QushaqAppBar(backButton: true,),
        body: Container(
          alignment: Alignment.center,
          child: FractionallySizedBox(
              widthFactor: 0.8,

              child: Column(
                children: <Widget>[
                  Text('Войти в аккаунт'.tr,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                  SizedBox(height: 25),


                  Container(
                    height: 60,
                    child: TextField(

                      onChanged: (text){
                        login = text;
                      },

                      style: TextStyle(color: Color(0xFFB8C2FF)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xA6EBEEFF),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF8F99D6)
                            )
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.5,
                              color: Color(0xFF8F99D6)
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),

                        labelText: 'Введите телефон или почту'.tr,
                        labelStyle: TextStyle(color: Color(0xFFB8C2FF)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 60,

                    child: TextField(
                      onChanged: (text){
                        password = text;
                      },


                      style: TextStyle(color: Color(0xFFB8C2FF)),
                      obscureText: password_status,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xA6EBEEFF),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF8F99D6)
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.5,
                                color: Color(0xFF8F99D6)
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          labelText: 'Введите пароль'.tr,
                          labelStyle: TextStyle(color: Color(0xFFB8C2FF)),


                          suffix: IconButton(onPressed: (){
                            setState(() {
                              if(password_status)
                                password_status = false;

                              else
                                password_status = true;

                            });
                          },
                              icon: Icon(password_status == true?Icons.remove_red_eye:Icons.password_rounded))
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.center,
                      height: 45,
                      // color: Color(0xFFB1BAF2),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFB1BAF2),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Color(0xFFB1BAF2)
                      ),

                      child: TextButton(
                        style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity, 45)
                        ),

                        onPressed: (){
                          print(login);
                          print(password);
                        },

                        child: Text('Продолжить'.tr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),

                      )
                  )
                ],
              )
          ),
        )
    );
  }
}