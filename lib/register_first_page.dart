import 'package:flutter/material.dart';
import 'qushaq_app_bar.dart';
import 'package:get/get.dart';

class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({super.key});

  @override
  State<RegisterFirstPage> createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QushaqAppBar(backButton: true),
      backgroundColor: const Color(0xfff6ffff),
      body: SafeArea(
          child: Center(
              child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                          child: Text(
                        'Введите номер телефона:'.tr,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      )),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          'Ваш номер телефона будет использоваться для входа в аккаунт'
                              .tr,
                          style: TextStyle(
                              color: const Color(0xffB9B9B9),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: Color(0xFFB8C2FF)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xA6EBEEFF),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xFF8F99D6),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.5, color: Color(0xFF8F99D6)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, 45),
                          backgroundColor: Color(0xffB2BBEE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        child: Text('Продолжить'.tr,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signupstepsecond');
                        },
                      )
                    ],
                  )))),
    );
  }
}
