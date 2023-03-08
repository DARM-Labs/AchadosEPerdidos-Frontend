import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends GetView {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Sobre',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 32,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/ifce_logo.png",
                    width: 100,
                  ),
                  Image.asset(
                    "assets/images/logo_img.png",
                    width: 160,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                // top: 14,
                bottom: 4,
              ),
              child: Text(
                "Projeto Achados e perdidos - IFCE",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                "Projeto feito em parceria com o grupo\nGDPPI junto ao Darm Lab e o IFCE",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
