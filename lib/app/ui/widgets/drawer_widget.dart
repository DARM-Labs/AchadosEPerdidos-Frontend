import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../controller/home_controller.dart';
import '../../routes/app_routes.dart';
import 'avatar_widget.dart';

class DrawerWidget extends Drawer {
  DrawerWidget({super.key});

  selectPage(String page) {
    Get.back();
    Get.toNamed(page);
  }

  final _routes = [
    Routes.HOME,
    Routes.FOUNDS_OBJECTS,
    Routes.LOSES_OBJECTS,
    Routes.ABOUT,
    Routes.LOGIN,
  ];
  final _icons = [
    MdiIcons.home,
    MdiIcons.tag,
    MdiIcons.tagOff,
    MdiIcons.information,
    MdiIcons.logout,
  ];
  final _texts = [
    "Início",
    "Objetos achados",
    "Objetos perdidos",
    "Sobre",
    "Sair",
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Drawer(
        backgroundColor: Get.theme.colorScheme.background,
        surfaceTintColor: Get.theme.colorScheme.onBackground,
        child: ListView(
          children: [
            GestureDetector(
              onTap: () => selectPage(Routes.PROFILE),
              child: UserAccountsDrawerHeader(
                currentAccountPictureSize: const Size.square(60),
                margin: EdgeInsets.zero,
                currentAccountPicture: const AvatarWidget(
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
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2)),
                            Text(
                              "achados",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Get.theme.colorScheme.onBackground
                                      .withOpacity(0.5)),
                            ),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        Row(
                          children: [
                            Text(
                              "1",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Get.theme.colorScheme.onBackground),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2)),
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
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * .36,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: constraints.maxHeight * .07,
                    child: ListTile(
                      onTap: () => selectPage(_routes[index]),
                      leading: Icon(_icons[index]),
                      title: Text(_texts[index]),
                      iconColor: index != 4
                          ? Get.theme.iconTheme.color
                          : Get.theme.colorScheme.error,
                      textColor:
                          index != 4 ? null : Get.theme.colorScheme.error,
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 0.3,
                  height: 0,
                ),
                itemCount: 5,
              ),
            ),
          ],
        ),
      );
    });
  }
}
