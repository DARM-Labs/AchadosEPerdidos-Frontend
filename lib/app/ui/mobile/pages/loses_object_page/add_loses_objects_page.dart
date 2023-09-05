import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../controller/home_controller.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/textField_widget.dart';


class AddLosesObjectsPage extends GetView<HomeController> {
  const AddLosesObjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Adicionar Objetos",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              "perdido",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 191,
              decoration: const BoxDecoration(
                color: Color.fromARGB(100, 158, 158, 158),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              child: const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.image_outlined,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Foto Opcional",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Text(
                    "Digite o nome do objeto perdido",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "ex: garrafa azul",
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(180, 158, 158, 158),
                    ),
                  ),
                  const TextFieldWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Ultimo local visto",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "ex: na arquibancada da quadra",
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(180, 158, 158, 158),
                    ),
                  ),
                  const TextFieldWidget(),
                  const SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ButtonWidget(
                        title: 'Publicar',
                        onPressed: () => selectPage(Routes.SUCESS_ADD_LOSES_OBJECTS)),
                  ),
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
