import 'package:achadoseperdidosifce/app/data/model/found_object_model.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/detail_object.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostedObject extends StatelessWidget {
  final FoundObjectModel object;
  const PostedObject({super.key, required this.object});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailObject(
            object: object,
            tagHero: object.id,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      leading: Hero(
        tag: object.id,
        child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            object.imageUrl,
          ),
        ),
      ),
      title: Text(
        object.name,
        style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            object.date,
            style: GoogleFonts.quicksand(
              fontSize: 14,
            ),
          ),
          Text(
            object.location,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
