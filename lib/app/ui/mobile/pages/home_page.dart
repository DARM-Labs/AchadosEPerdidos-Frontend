import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/object_horizontal_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          title: SizedBox(
            height: 50,
            child: Image.asset(
              'assets/images/logo_img.png',
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 60),
                child: Text(
                  "Achados Recentes",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.separated(
                    padding: const EdgeInsets.only(top: 8, left: 15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const ObjectHorizontalWidget(),
                    itemCount: 5,
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.all(16))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 16),
                child: Text(
                  "Perdidos Recentes",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: ListView.separated(
                    padding: const EdgeInsets.only(top: 8, left: 15),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const ObjectHorizontalWidget(),
                    itemCount: 5,
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.all(16))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 60, bottom: 54),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Itens que você encontrou",
                      style: GoogleFonts.quicksand(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Sem objetos registrados",
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Get.theme.colorScheme.error),
                    ),
                    Text(
                      "fique atento e assim que encontrar algo registre",
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Get.theme.colorScheme.error),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
