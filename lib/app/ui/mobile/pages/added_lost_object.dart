import 'package:achadoseperdidosifce/app/ui/widgets/button_widget.dart';
import 'package:achadoseperdidosifce/app/utils/variaveis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/app_routes.dart';

class AddedLostObject extends StatelessWidget {
  const AddedLostObject({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final alturaDisponivel = Variavel.alturaDisponivel(context);

        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: alturaDisponivel * .33,
                    child: Image.asset(
                      "assets/images/added_lost.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: alturaDisponivel * .02,
                      bottom: alturaDisponivel * .03,
                    ),
                    child: Text(
                      "Calma... Logo alguém vai encontrar seu objeto perdido e você será notificado, enquanto isso fique de olho em nosso aplicativo",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF2C2A2F),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 6,
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth * .90,
                    child: ButtonWidget(
                      title: "Início",
                      onPressed: () => Get.offAndToNamed(Routes.HOME),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
