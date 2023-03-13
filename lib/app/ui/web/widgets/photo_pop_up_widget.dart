import 'package:achadoseperdidosifce/app/ui/widgets/photo_user_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PhotoPopUpWidget extends StatelessWidget {
  const PhotoPopUpWidget(
      {super.key, this.urlPhoto, this.onTapChoosePhoto, this.onTapDelPhoto});
  final String? urlPhoto;
  final void Function()? onTapChoosePhoto;
  final void Function()? onTapDelPhoto;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      surfaceTintColor: Colors.transparent,
      padding: EdgeInsets.zero,
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: EdgeInsets.zero,
          child: ListTile(
            onTap: onTapChoosePhoto,
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
        ),
        PopupMenuItem(
            padding: EdgeInsets.zero,
            child: (onTapDelPhoto != null
                ? ListTile(
                    onTap: onTapDelPhoto,
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
                  )
                : Container())),
      ],
      offset: const Offset(200, 80),
      elevation: 0,
      tooltip: 'Editar foto',
      child: PhotoUserButtonWidget(
        urlPhoto: urlPhoto,
      ),
    );
  }
}
