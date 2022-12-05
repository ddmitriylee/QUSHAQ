import 'package:get/get.dart';

class WorldLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {

    'en_US': {
      'Создать аккаунт': 'Sign In',
      'Войти': 'Log In',
      'Проблемы со входом в аккаунт?': 'Having troubles with logging in?'
    },

    'kz_KZ': {
      'Создать аккаунт': 'Тіркелу',
      'Войти': 'Кіру',
      'Проблемы со входом в аккаунт?': 'Кірумен мәселелер пайда болды ма?'
    },

    'ru_RU':{
      'Создать аккаунт':'Создать аккаунт',
      'Войти':'Войти',
      'Проблемы со входом в аккаунт?': 'Проблемы со входом в аккаунт?',
    }

    //add more language here
  };
}