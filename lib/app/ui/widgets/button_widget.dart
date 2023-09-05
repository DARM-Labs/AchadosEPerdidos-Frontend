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
    this.showIcon = false,
  });

  final String title;
  final void Function()? onPressed;
  @override
  final EdgeInsets? margin;
  final bool? outlined;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: outlined == null
            ? ElevatedButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  elevation: const MaterialStatePropertyAll(0),
                  textStyle: MaterialStatePropertyAll(GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (showIcon)
                      const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ), SizedBox(
                        width: showIcon
                            ? 10
                            : 0),
                    Text(title),
                    SizedBox(
                        width: showIcon
                            ? 10
                            : 0), // Espaço entre o ícone e o texto
                  ],
                ))
            : TextButton(
                child: Text(title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(15)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Get.theme.colorScheme.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                                color: Get.theme.colorScheme.primary)))),
                onPressed: onPressed));
  }
}
