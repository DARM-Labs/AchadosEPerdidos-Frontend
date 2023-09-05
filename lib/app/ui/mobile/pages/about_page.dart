import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/logo_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/logo_ifce_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends GetView {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sobre')),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [LogoIfceWidget(), LogoWidget()],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Projeto Achados e perdidos - IFCE",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.7,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Projeto feito em parceria com o grupo\nGDPPI junto ao Darm Lab e o IFCE ",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14),
                  textAlign: TextAlign.center,
            )
          ],
        )));
  }
}
