import 'package:achadoseperdidosifce/app/ui/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../controller/auth_controller/forgot_password_controller.dart';
import '../../../../widgets/button_widget.dart';

class SuccessForgotPasswordPage extends GetView<ForgotPasswordController> {
  const SuccessForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoWidget(),
              const Padding(padding: EdgeInsets.all(30)),
              Icon(
                Icons.done,
                size: 200,
                color: Get.theme.colorScheme.primary,
              ),
              Text(
                'Senha alterada com sucesso',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 36),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              ButtonWidget(
                  title: 'Fazer login',
                  onPressed: () => controller.successForgotPassword()),
              const Padding(padding: EdgeInsets.all(10)),
            ],
          ),
        ),
      ),
    ));
  }
}
