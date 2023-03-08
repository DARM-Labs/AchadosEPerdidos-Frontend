import 'package:achadoseperdidosifce/app/utils/variaveis.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/profile_controller.dart';
import '../../widgets/photo_user_button_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _alturaDisponivel = Variavel.alturaDisponivel(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return Scaffold(
          drawer: DrawerWidget(),
          appBar: AppBar(
            title: const Text('Perfil'),
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: _alturaDisponivel * .38,
                    width: maxWidth,
                    decoration: BoxDecoration(
                      color: Get.theme.colorScheme.secondary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: _alturaDisponivel * .04),
                          child: Form(
                            key: controller.formGlobalKey,
                            child: Obx(
                              () => PhotoUserButtonWidget(
                                title: "João Carlos Guilherme",
                                urlPhoto: controller.photoUser.value,
                                onTap: () => controller.selectPhoto(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _alturaDisponivel * .06,
                          width: maxWidth * .60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 30,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFACACAC),
                                    ),
                                    child: Text(
                                      "5",
                                      style: GoogleFonts.quicksand(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Achados",
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 30,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFACACAC),
                                    ),
                                    child: Text(
                                      "1",
                                      style: GoogleFonts.quicksand(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Perdidos",
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    
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
