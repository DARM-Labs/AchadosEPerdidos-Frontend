import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownButtonWidget extends Container {
  DropDownButtonWidget({
    super.key,
    required this.label,
    this.items,
    this.onChanged,
    this.value,
    this.validator,
  });

  final dynamic value;
  final String label;
  final List<DropdownMenuItem<dynamic>>? items;
  final void Function(dynamic)? onChanged;
  final String? Function(dynamic)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
        const Padding(padding: EdgeInsets.only(top: 10)),
        DropdownButtonFormField(
          key: key,
          items: items,
          onChanged: onChanged,
          value: value,
          validator: validator,
          hint: const Text('Selecione'),
          focusColor: Colors.transparent,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
        ),
      ],
    );
  }
}
