import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'qushaq_app_bar.dart';
import 'package:get/get.dart';


class RegisterThirdStep extends StatefulWidget {
  const RegisterThirdStep({super.key});

  @override
  State<RegisterThirdStep> createState() => _RegisterThirdStepstate();
}

class _RegisterThirdStepstate extends State<RegisterThirdStep>{

  bool password_status = true;
  String login = "";
  String password = "";
  dynamic dateValue = TextEditingController();

  void handleText (text) {
    print(text);
  }

  String parseDate(DateTime date) {
    return "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')}";
  }

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateValue.text = parseDate(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: QushaqAppBar(backButton: true,),
        backgroundColor: const Color(0xfff6ffff),
        body: SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Column(
                    children: [
                      Text('Информация о себе'.tr,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 25),
                      TextField(
                        keyboardType: TextInputType.text,
                        onChanged: (text) {handleText(text);},
                        style: TextStyle(color: Color(0xFFB8C2FF)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xA6EBEEFF),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFF8F99D6)
                              ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5,
                                color: Color(0xFF8F99D6)
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          labelText: 'Имя'.tr,
                          labelStyle: TextStyle(color: Color(0xFFB8C2FF)),
                        ),
                      ),
                      SizedBox(height: 16,),
                      TextField(
                        keyboardType: TextInputType.text,
                        onChanged: (text) {handleText(text);},
                        style: TextStyle(color: Color(0xFFB8C2FF)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xA6EBEEFF),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF8F99D6)
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5,
                                color: Color(0xFF8F99D6)
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          labelText: 'Фамилия'.tr,
                          labelStyle: TextStyle(color: Color(0xFFB8C2FF)),
                        ),
                      ),
                      SizedBox(height: 16,),
                      TextField(
                        controller: dateValue,
                        onTap: () => _selectDate(context),
                        readOnly: true,
                        style: TextStyle(color: Color(0xFFB8C2FF)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xA6EBEEFF),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF8F99D6)
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5,
                                color: Color(0xFF8F99D6)
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          labelText: 'Выберите дату рождения'.tr,
                          labelStyle: TextStyle(color: Color(0xFFB8C2FF)),
                        ),
                      ),
                    ],
                  )
              ),
            )
        )
    );
  }
}