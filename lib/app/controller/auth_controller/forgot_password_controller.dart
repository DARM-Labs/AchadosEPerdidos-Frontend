import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/repository/forgot_password_repository.dart';

class ForgotPasswordController extends GetxController {
  final ForgotPasswordRepository repository;
  ForgotPasswordController(this.repository);

  var email = ''.obs;
  var code = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  final formGlobalKey = GlobalKey<FormState>();
  final formKeyCheckCode = GlobalKey<FormState>();

  void insertEmail() {
    if (formGlobalKey.currentState!.validate()) {
      Get.toNamed(Routes.CHECK_CODE_FORGOT_PASSWORD);
    }
  }

  void checkCode() {
    if (formKeyCheckCode.currentState!.validate()) {
      Get.toNamed(Routes.NEW_PASSWORD_FORGOT_PASSWORD);
    }
  }

  void changePassword() {
    if (formGlobalKey.currentState!.validate()) {
      Get.toNamed(Routes.SUCCESS_FORGOT_PASSWORD);
    }
  }

  void successForgotPassword() {
    Get.offAndToNamed(Routes.LOGIN);
  }
}
