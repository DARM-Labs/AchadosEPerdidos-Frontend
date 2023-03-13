import 'package:achadoseperdidosifce/app/data/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/repository/auth_repository.dart';

class SignUpController extends GetxController {
  final AuthRepository repository;
  SignUpController(this.repository);

  final formGlobalKey = GlobalKey<FormState>();

  var user = UserModel();

  var office = 'asdas'.obs;

  signUp() async {
    await repository.signUp(user: user);
  }

  saveButton(Function function) {
    if (formGlobalKey.currentState!.validate()) {
      signUp();
    }
  }
}
