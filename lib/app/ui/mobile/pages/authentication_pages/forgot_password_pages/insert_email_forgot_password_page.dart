import 'package:achadoseperdidosifce/app/ui/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../controller/auth_controller/forgot_password_controller.dart';
import '../../../../../utils/validators.dart';
import '../../../../widgets/button_widget.dart';
import '../../../../widgets/textField_widget.dart';

class InsertEmailForgotPasswordPage extends GetView<ForgotPasswordController> {
  const InsertEmailForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
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
                          'Digite seu e-mail',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          'Iremos enviar um código de recuperação de senha para seu e-mail com base no seu cadastro',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  TextFieldWidget(
                    key: controller.formGlobalKey,
                    hintText: 'E-mail',
                    onChanged: (value) => controller.email(value),
                    validator: (value) => Validators.combine([
                      () => Validators.isNotEmpty(value),
                      () => Validators.isEmail(value)
                    ]),
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  ButtonWidget(
                      title: 'Solicitar código',
                      onPressed: () => controller.insertEmail()),
                  const Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
          ),
        ));
  }
}
