import 'package:achadoseperdidosifce/app/ui/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../controller/auth_controller/forgot_password_controller.dart';
import '../../../../../utils/validators.dart';
import '../../../../widgets/button_widget.dart';
import '../../../../widgets/textField_widget.dart';

class NewPasswordForgotPasswordPage extends GetView<ForgotPasswordController> {
  const NewPasswordForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
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
              const Padding(padding: EdgeInsets.all(30)),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Digite sua nova senha',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      '8 caracteres;\nPossuir pelo menos um número;\nTer ao menos uma letra maiúscula',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              TextFieldWidget(
                hintText: 'Nova senha',
                security: true,
                onChanged: (value) => controller.password(value),
                validator: (value) => Validators.combine([
                  () => Validators.isNotEmpty(value),
                  () => Validators.greaterThanEightEightCaracters(value)
                ]),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              TextFieldWidget(
                hintText: 'Confirmar sua senha',
                security: true,
                onChanged: (value) => controller.confirmPassword(value),
                validator: (value) => Validators.combine([
                  () => Validators.isNotEmpty(value),
                  () => Validators.greaterThanEightEightCaracters(value)
                ]),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              ButtonWidget(
                  title: 'Alterar senha',
                  onPressed: () => controller.changePassword()),
              const Padding(padding: EdgeInsets.all(10)),
            ],
          ),
        ),
      ),
    )));
  }
}
