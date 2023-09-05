// ignore_for_file: constant_identifier_names

abstract class Routes {
  static const SPLASH = '/';
  //Autenticação
  static const LOGIN = '/login';
  static const SIGN_UP = '/sign_up';

  //Recuperar senha
  static const INSERT_EMAIL_FORGOT_PASSWORD = '/forgot_password/insert_email';
  static const CHECK_CODE_FORGOT_PASSWORD = '/forgot_password/check_code';
  static const NEW_PASSWORD_FORGOT_PASSWORD = '/forgot_password/new_password';
  static const SUCCESS_FORGOT_PASSWORD = '/forgot_password/success';
  //Inicio
  static const HOME = '/home';
  static const PROFILE = '/profile';
  static const LOSES_OBJECTS = '/objects/loses';
  static const ADD_LOSES_OBJECTS = '/objects/loses/add';
  static const SUCESS_ADD_LOSES_OBJECTS = '/objects/loses/add/sucess';
  static const FOUNDS_OBJECTS = '/objects/founds';
  static const FOUNDS_OBJECTS_ADD = '/objects/founds/add';
  static const ABOUT = '/about';
}
