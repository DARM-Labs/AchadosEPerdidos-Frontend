import 'package:get/get.dart';

class Validators {
  static String? isNotEmpty(String? value) {
    if (value!.isEmpty || value == '') {
      return "Este campo é obrigatório!";
    }
    return null;
  }

  static String? isCpf(String? value) {
    if (!GetUtils.isCpf(value!)) {
      return "Este cpf é inválido!";
    }
    return null;
  }

  static String? isEmail(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return "Este email é inválido!";
    }
    return null;
  }

  static String? greaterThanEightEightCaracters(String? value) {
    if (value!.length < 8) {
      return "Esta senha deve conter de 8 a 20 caracteres!";
    }
    return null;
  }

  static String? isTelephone(String? value) {
    if (!GetUtils.isPhoneNumber(value!)) {
      return "Este número é inválido!";
    }
    return null;
  }

  static String? isUserName(String? value) {
    if (GetUtils.isUsername(value!)) {
      return "Este nome é inválido!";
    }
    return null;
  }

  static String? combine(List<String? Function()> validators) {
    for (final func in validators) {
      final validation = func();
      if (validation != null) return validation;
    }
    return null;
  }
}
