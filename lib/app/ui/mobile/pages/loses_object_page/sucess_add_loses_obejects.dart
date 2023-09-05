import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../controller/home_controller.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/button_widget.dart';

class SucessAddLosesObjectsPage extends GetView<HomeController> {
  const SucessAddLosesObjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "",
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: 187,
                    child: Image.asset('assets/images/logo_peoples.png',
                        fit: BoxFit.fitWidth),
                  ),
                  Text(
                'Calma... Logo alguém vai encontrar seu objeto perdido e você será notificado, enquanto isso fique de olho em nosso aplicativo',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(height: 16,),
                  ButtonWidget(
                      title: 'inicio',
                      onPressed: () => selectPage(Routes.LOGIN)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

selectPage(String page) {
  Get.back();
  Get.toNamed(page);
}
