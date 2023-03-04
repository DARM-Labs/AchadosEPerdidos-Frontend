import 'package:achadoseperdidosifce/app/data/model/found_object_model.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/detail_object.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ObjectVerticalWidget extends StatelessWidget {
  final FoundObjectModel object;
  final String tagHero;
  const ObjectVerticalWidget(
      {super.key, required this.object, required this.tagHero});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                DetailObject(object: object, tagHero: tagHero),
          ),
        );
      },
      child: SizedBox(
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
              child: Hero(
                tag: tagHero,
                child: FadeInImage(
                  placeholder: const AssetImage("assets/images/fundo.png"),
                  image: NetworkImage(
                    object.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(4)),
            Text(
              object.name,
              style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              object.location,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Padding(padding: EdgeInsets.all(7)),
            Row(
              children: [
                const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2012/04/14/14/16/cubes-34080_1280.png",
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                Expanded(
                  child: Text(
                    "Lucas Sales",
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      textStyle: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
