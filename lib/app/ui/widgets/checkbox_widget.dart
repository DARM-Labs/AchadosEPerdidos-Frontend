import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxWidget extends StatelessWidget {
  final String text;
  final dynamic alturaDisponivel;
  final bool valueCheckbox1;
  final bool valueCheckbox2;

  final void Function(bool?)? onChanged1;
  final void Function(bool?)? onChanged2;

  const CheckboxWidget({
    super.key,
    required this.alturaDisponivel,
    required this.onChanged1,
    required this.onChanged2,
    required this.text,
    required this.valueCheckbox1,
    required this.valueCheckbox2,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: valueCheckbox1,
                      onChanged: onChanged1,
                    ),
                    Text(
                      "Não",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: constraints.maxWidth * .04),
                  child: Row(
                    children: [
                      Checkbox(
                        value: valueCheckbox2,
                        onChanged: onChanged2,
                      ),
                      Text(
                        "Sim",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
