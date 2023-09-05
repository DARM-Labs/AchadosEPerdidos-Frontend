import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../routes/app_routes.dart';
import 'avatar_widget.dart';

class DrawerWidget extends Drawer {
  const DrawerWidget({super.key});

  selectPage(String page) {
    Get.back();
    Get.toNamed(page);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Get.theme.colorScheme.background,
      surfaceTintColor: Get.theme.colorScheme.onBackground,
      child: ListView(children: [
        GestureDetector(
          onTap: () => selectPage(Routes.PROFILE),
          child: UserAccountsDrawerHeader(
              currentAccountPictureSize: Size.square(60),
              margin: EdgeInsets.zero,
              currentAccountPicture: AvatarWidget(
                name: "Michael",
              ),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              accountName: Text(
                'Michael Alves',
                style: GoogleFonts.poppins(
                    color: Get.theme.colorScheme.onBackground),
              ),
              accountEmail: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "michael.alves08@gmail.com",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Get.theme.colorScheme.onBackground
                            .withOpacity(0.5)),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "5",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Get.theme.colorScheme.onBackground),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "achados",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Get.theme.colorScheme.onBackground
                                    .withOpacity(0.5)),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Row(
                        children: [
                          Text(
                            "1",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Get.theme.colorScheme.onBackground),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "perdidos",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Get.theme.colorScheme.onBackground
                                    .withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ),
        const Divider(
          thickness: 0.3,
          height: 0,
        ),
        ListTile(
          onTap: () => selectPage(Routes.HOME),
          leading: const Icon(MdiIcons.home),
          title: const Text('Inicio'),
        ),
        const Divider(
          thickness: 0.3,
          height: 0,
        ),
        ListTile(
          onTap: () => selectPage(Routes.FOUNDS_OBJECTS),
          leading: const Icon(MdiIcons.tag),
          title: const Text('Objetos achados'),
        ),
        const Divider(
          thickness: 0.3,
          height: 0,
        ),
        ListTile(
          onTap: () => selectPage(Routes.LOSES_OBJECTS),
          leading: const Icon(MdiIcons.tagOff),
          title: const Text('Objetos perdidos'),
        ),
        const Divider(
          thickness: 0.3,
          height: 0,
        ),
        ListTile(
          onTap: () => selectPage(Routes.ABOUT),
          leading: const Icon(MdiIcons.information),
          title: const Text('Sobre'),
        ),
        const Divider(
          thickness: 0.3,
          height: 0,
        ),
        ListTile(
          onTap: () => selectPage(Routes.LOGIN),
          leading: const Icon(MdiIcons.logout),
          iconColor: Get.theme.colorScheme.error,
          title: const Text(
            'Sair',
          ),
          textColor: Get.theme.colorScheme.error,
        ),
      ]),
    );
  }
}
