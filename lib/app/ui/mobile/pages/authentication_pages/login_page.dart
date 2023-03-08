import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/button_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/logo_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/text_button_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth_controller/login_controller.dart';
import '../../../../utils/validators.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: controller.formGlobalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidget(),
              const Padding(padding: EdgeInsets.all(10)),
              TextFieldWidget(
                // key: const Key("text-field"),
                label: 'Digite seu e-mail',
                hintText: 'E-mail',
                onChanged: (value) => controller.email(value),
                validator: (value) => Validators.combine([
                  () => Validators.isNotEmpty(value),
                  () => Validators.isEmail(value)
                ]),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              TextFieldWidget(
                // key: const Key("text-field-widget"),
                label: 'Digite sua senha',
                hintText: '∗∗∗∗∗∗∗∗',
                security: true,
                onChanged: (value) => controller.password(value),
                validator: (value) => Validators.combine([
                  () => Validators.isNotEmpty(value),
                ]),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: TextButtonWidget(
                    title: 'Esqueceu sua senha?',
                    onTap: () =>
                        Get.toNamed(Routes.INSERT_EMAIL_FORGOT_PASSWORD)),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              ButtonWidget(
                  title: 'Entrar', onPressed: () => controller.saveButton()),
              const Padding(padding: EdgeInsets.all(10)),
              ButtonWidget(
                title: 'Criar conta',
                onPressed: () => Get.toNamed(Routes.SIGN_UP),
                outlined: true,
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
