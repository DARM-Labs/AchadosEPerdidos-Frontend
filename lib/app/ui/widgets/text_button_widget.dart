import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends Container {
  TextButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: GestureDetector(
        onTap: onTap,
        child: Text(title,
            style: GoogleFonts.montserrat(
              color: Get.theme.colorScheme.primary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}
