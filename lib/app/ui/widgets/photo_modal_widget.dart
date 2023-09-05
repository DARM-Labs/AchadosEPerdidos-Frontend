import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PhotoUserModalWidget extends StatelessWidget {
  const PhotoUserModalWidget(
      {this.onTapTakePhoto,
      this.onTapChoosePhoto,
      super.key,
      this.onTapDelPhoto});
  final void Function()? onTapTakePhoto;
  final void Function()? onTapChoosePhoto;
  final void Function()? onTapDelPhoto;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adicionar foto',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: const Icon(MdiIcons.close),
                ),
              ],
            )),
        Column(
          children: [
            ListTile(
              onTap: onTapTakePhoto,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Icon(
                MdiIcons.cameraOutline,
                size: 25,
                color: Get.theme.colorScheme.primary,
              ),
              title: Text(
                'Tirar foto',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 0.5,
            ),
            ListTile(
              onTap: onTapChoosePhoto,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              leading: Icon(
                MdiIcons.imageOutline,
                size: 25,
                color: Get.theme.colorScheme.primary,
              ),
              title: Text(
                'Escolher foto',
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ),
            (onTapDelPhoto != null
                ? Column(
                    children: [
                      const Divider(
                        height: 0,
                        thickness: 0.5,
                      ),
                      ListTile(
                        onTap: onTapDelPhoto,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        leading: Icon(
                          MdiIcons.deleteOutline,
                          size: 25,
                          color: Get.theme.colorScheme.error,
                        ),
                        title: Text(
                          'Remover foto',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Get.theme.colorScheme.error),
                        ),
                      ),
                    ],
                  )
                : Container())
          ],
        ),
      ],
    );
  }
}
