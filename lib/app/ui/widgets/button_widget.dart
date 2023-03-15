import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends Container {
  ButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.margin,
    this.outlined,
  });

  final String title;
  final void Function()? onPressed;
  final EdgeInsets? margin;
  final bool? outlined;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: outlined == null
          ? ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                textStyle: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              child: Text(title),
            )
          : TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
                foregroundColor: Get.theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Get.theme.colorScheme.primary),
                ),
              ),
              onPressed: onPressed,
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
    );
  }
}
