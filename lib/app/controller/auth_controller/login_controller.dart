import 'package:achadoseperdidosifce/app/data/model/user_model.dart';
import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/repository/auth_repository.dart';

class LoginController extends GetxController {
  final AuthRepository repository;
  LoginController(this.repository);

  var user = UserModel();
  var email = ''.obs;
  var password = ''.obs;

  final formGlobalKey = GlobalKey<FormState>();

  login() async {
    try {
      await repository
          .login(email: email.value, password: password.value)
          .then((value) {
        user = value.body!;
        Get.offAndToNamed(Routes.HOME);
      });
    } catch (erro) {
      Get.snackbar('Erro', erro.toString());
    }
  }

  saveButton() {
    Get.offNamed(Routes.HOME);
  }
}
