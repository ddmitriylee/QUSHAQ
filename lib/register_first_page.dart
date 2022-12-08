import 'package:flutter/material.dart';
import 'qushaq_app_bar.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'data_class/phone_number.dart';

class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({super.key});

  @override
  State<RegisterFirstPage> createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  final _phoneNumberEditingController = TextEditingController(text: '+7 (7');
  var phoneNumberFormatter = MaskTextInputFormatter(
      mask: '+7 (7##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

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
                      const SizedBox(height: 20),
                      Text(
                        'Введите номер телефона:'.tr,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Ваш номер телефона будет использоваться для входа в аккаунт'
                            .tr,
                        style: const TextStyle(
                            color: Color(0xffB9B9B9),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _phoneNumberEditingController,
                        inputFormatters: [phoneNumberFormatter],
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(color: Color(0xFFB8C2FF)),
                        decoration: InputDecoration(
                          hintText: "+7 (7**) ***-**-**",
                          hintStyle: TextStyle(color: Color(0xFF8F99D6)),
                          filled: true,
                          fillColor: const Color(0xA6EBEEFF),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color(0xFF8F99D6),
                              )),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: Color(0xFF8F99D6)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 45),
                          backgroundColor: const Color(0xffB2BBEE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        child: Text('Продолжить'.tr,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signupstepsecond',
                              arguments: PhoneNumberData(
                                  _phoneNumberEditingController.text));
                        },
                      )
                    ],
                  )))),
    );
  }
}
