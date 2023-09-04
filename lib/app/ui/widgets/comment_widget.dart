import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentWidget extends StatelessWidget {
  final String photo;
  final String name;
  final String description;
  final String hour;

  const CommentWidget({
    Key? key,
    required this.photo,
    required this.name,
    required this.description,
    required this.hour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromRGBO(217, 217, 217, 1),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(photo),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.quicksand(fontSize: 14),
                    ),
                    Text(
                      hour,
                      style: GoogleFonts.quicksand(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text(
              description,
              style: GoogleFonts.quicksand(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textStyle:
                const TextStyle(overflow: TextOverflow.ellipsis),
              ),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
