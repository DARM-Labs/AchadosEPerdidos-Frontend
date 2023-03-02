import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ObjectVerticalWidget extends StatelessWidget {
  const ObjectVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(8)),
            child: Icon(
              MdiIcons.imageOutline,
              size: 80,
              color: Get.theme.colorScheme.background,
            ),
          ),
          const Padding(padding: EdgeInsets.all(4)),
          Text(
            "Garrafa azul Marinho",
            style: GoogleFonts.quicksand(
                fontSize: 14, fontWeight: FontWeight.w700),
          ),
          Text("fjsfiahsdhuaahdsihifd"),
          const Padding(padding: EdgeInsets.all(7)),
          Row(children: [
            SizedBox(
              width: 24,
              height: 24,
              child: CircleAvatar(
                  foregroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2012/04/14/14/16/cubes-34080_1280.png",
              )),
            ),
            const Padding(padding: EdgeInsets.all(8)),
            Text(
              "Lucas Sales",
              style: GoogleFonts.quicksand(fontSize: 14),
            ),
          ]),
        ],
      ),
    );
  }
}
