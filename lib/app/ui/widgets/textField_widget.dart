import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? initiaValue;
  final String? label;
  final String? hintText;
  final double? width;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String?)? onSaved;
  final bool? autofocus;
  @override
  final EdgeInsets? margin;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLenght;
  final bool? obscureText;
  final Widget? suffix;
  final void Function(String)? onChanged;
  final bool? security;

  const TextFieldWidget(
      {super.key,
      this.controller,
      this.initiaValue,
      this.label,
      this.width,
      this.hintText,
      this.validator,
      this.keyboardType,
      this.textInputAction,
      this.onSaved,
      this.margin,
      this.textAlign,
      this.inputFormatters,
      this.maxLenght,
      this.obscureText,
      this.suffix,
      this.autofocus,
      this.onChanged,
      this.security});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Text(
              widget.label!,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextFormField(
              key: widget.key,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: widget.hintText,
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey.shade300,
                    fontWeight: FontWeight.w300,
                  ),
                  errorStyle: GoogleFonts.montserrat(),
                  suffixIcon: widget.security == true
                      ? GestureDetector(
                          onTap: () => setState(() {
                                eye = !eye;
                              }),
                          child: Icon(
                            eye == true
                                ? MdiIcons.eyeOffOutline
                                : MdiIcons.eyeOutline,
                            size: 23,
                          ))
                      : widget.suffix),
              initialValue: widget.initiaValue ?? '',
              onChanged: widget.onChanged,
              controller: widget.controller,
              validator: widget.validator,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              maxLength: widget.maxLenght,
              onSaved: widget.onSaved,
              autofocus: widget.autofocus ?? false,
              obscureText: widget.security == true
                  ? widget.obscureText == null
                      ? eye
                      : widget.obscureText!
                  : false,
              obscuringCharacter: "∗",
              textAlign: widget.textAlign ?? TextAlign.left,
              textAlignVertical: TextAlignVertical.center,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              inputFormatters: widget.inputFormatters,
            ),
          ),
        ],
      ),
    );
  }
}
