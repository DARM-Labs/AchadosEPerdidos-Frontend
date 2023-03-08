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
            backgroundColor: const Color(0xFF5FD05E).withOpacity(0.3),
            foregroundColor: Get.theme.colorScheme.onPrimary.withOpacity(0.5),
            maxRadius: 48,
            foregroundImage:
                urlPhoto != "" ? Image.network(urlPhoto!).image : null,
            child: const Icon(
              MdiIcons.cameraPlusOutline,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              title!,
              style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
