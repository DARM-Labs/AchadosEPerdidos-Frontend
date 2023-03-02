import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PhotoUserButtonWidget extends StatelessWidget {
  const PhotoUserButtonWidget({
    super.key,
    this.onTap,
    this.urlPhoto,
    this.title,
  });

  final String? title;
  final void Function()? onTap;
  final String? urlPhoto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Get.theme.colorScheme.primary,
            foregroundColor: Get.theme.colorScheme.onPrimary,
            maxRadius: 55,
            foregroundImage:
                urlPhoto != "" ? Image.network(urlPhoto!).image : null,
            child: const Icon(
              MdiIcons.cameraPlusOutline,
              size: 50,
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Text(
            title!,
            style: GoogleFonts.poppins(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
