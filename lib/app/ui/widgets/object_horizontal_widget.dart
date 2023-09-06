import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ObjectHorizontalWidget extends StatelessWidget {
  final int id;
  const ObjectHorizontalWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              Get.toNamed(Routes.OBJECT_DETAIL, arguments: id);
            },
            child: Container(
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
          ),
          const Padding(padding: EdgeInsets.all(4)),
          Text(
            "Garrafa azul Marinho Garrafa azul Marinho Garrafa azul Marinho",
            style: GoogleFonts.quicksand(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textStyle: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
            maxLines: 1,
          ),
          Text(
            "encontrada no laboratório 02 andar 1 encontrada no laboratório 02 andar 1 encontrada no laboratório 02 andar 1",
            style: GoogleFonts.quicksand(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textStyle: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
            maxLines: 1,
          ),
          const Padding(padding: EdgeInsets.all(7)),
          Row(children: [
            const SizedBox(
              width: 24,
              height: 24,
              child: CircleAvatar(
                  foregroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2012/04/14/14/16/cubes-34080_1280.png",
              )),
            ),
            const Padding(padding: EdgeInsets.all(8)),
            SizedBox(
              width: 150,
              child: Text(
                "Lucas Sales Lucas Sales Lucas Sales",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textStyle: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                maxLines: 1,
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            const Icon(
              Icons.mode_comment_outlined,
              size: 14,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
            const Padding(padding: EdgeInsets.all(2)),
            Text(
              "2+",
              style: GoogleFonts.quicksand(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
