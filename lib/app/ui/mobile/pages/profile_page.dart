import 'package:achadoseperdidosifce/app/utils/variaveis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../controller/profile_controller.dart';
import '../../widgets/photo_user_button_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final alturaDisponivel = Variavel.alturaDisponivel(context);
    bool eye = true;
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return Scaffold(
          // drawer: DrawerWidget(),
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
                    height: alturaDisponivel * .38,
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
                              EdgeInsets.only(bottom: alturaDisponivel * .04),
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
                          height: alturaDisponivel * .06,
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
                    margin:
                        EdgeInsets.symmetric(vertical: alturaDisponivel * .05),
                    height: alturaDisponivel * .52,
                    width: maxWidth * .80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              MdiIcons.emailOutline,
                              color: Colors.black,
                            ),
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                            hintStyle: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                MdiIcons.pencilOutline,
                              ),
                            ),
                            suffixIconColor: Get.theme.colorScheme.onBackground,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none),
                            ),
                            disabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(style: BorderStyle.none),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: alturaDisponivel * .23),
                          child: TextFormField(
                            obscureText: eye,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                MdiIcons.keyOutline,
                                color: Colors.black,
                              ),
                              labelStyle: GoogleFonts.poppins(
                                color: Colors.black,
                              ),
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.black,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  MdiIcons.pencilOutline,
                                ),
                              ),
                              suffixIconColor:
                                  Get.theme.colorScheme.onBackground,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.none),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.none),
                              ),
                              disabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(style: BorderStyle.none),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: alturaDisponivel * .08,
                          width: maxWidth,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              MdiIcons.logout,
                              color: Get.theme.colorScheme.onPrimary,
                            ),
                            label: const Text("Sair"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
