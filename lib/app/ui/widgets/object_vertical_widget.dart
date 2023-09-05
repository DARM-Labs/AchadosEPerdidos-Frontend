import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ObjectVerticalWidget extends StatelessWidget {
  const ObjectVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(100)),
              width: 80,
              height: 80,
              child: Icon(
                MdiIcons.imageOutline,
                size: 40,
                color: Get.theme.colorScheme.background,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width-120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Garrafa azul Marinho",
                    style: GoogleFonts.quicksand(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined, size: 12),
                      Text(
                        "12/02/2023",
                        style: GoogleFonts.quicksand(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(51, 51, 51, 1)),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Text(
                      "encontrada no laboratório 02 andar 1",
                      style: GoogleFonts.quicksand(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
