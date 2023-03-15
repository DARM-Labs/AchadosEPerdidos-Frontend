import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/button_widget.dart';
import 'package:achadoseperdidosifce/app/utils/variaveis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AddLosesPage extends StatelessWidget {
  const AddLosesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final alturaDisponivel = Variavel.alturaDisponivel(context);
        final maxWidth = constraints.maxWidth;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Adicionar Objeto Perdido'),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: maxWidth * .05),
                child: GestureDetector(
                  onTap: () {
                    _popUp(context);
                  },
                  child: const Icon(MdiIcons.deleteOutline),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: alturaDisponivel * .30,
                      width: maxWidth,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                      ),
                      child: Icon(
                        MdiIcons.imageOutline,
                        color: Colors.white,
                        size: alturaDisponivel * .10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: alturaDisponivel * .02,
                      bottom: alturaDisponivel * .05,
                    ),
                    child: Text(
                      "Foto Opcional",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: maxWidth * .90,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Digite o nome do objeto perdido",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "ex: garrafa azul",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: alturaDisponivel * .01,
                            bottom: alturaDisponivel * .04,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Local que foi encontrado",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "ex: na arquibancada da quadra",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: alturaDisponivel * .01,
                            bottom: alturaDisponivel * .02,
                          ),
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: alturaDisponivel * .03,
                            bottom: alturaDisponivel * .05,
                          ),
                          child: ButtonWidget(
                            title: "Publicar",
                            onPressed: () {
                              Get.toNamed(Routes.ADDED_LOST_PAGES);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _popUp(BuildContext context) {
    final alturaDisponivel = Variavel.alturaDisponivel(context);
    showDialog(
      context: context,
      builder: (context) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return AlertDialog(
              contentPadding: EdgeInsets.only(
                top: alturaDisponivel * .03,
              ),
              actionsPadding: EdgeInsets.only(
                top: alturaDisponivel * .03,
                bottom: alturaDisponivel * .03,
                left: constraints.maxWidth * .05,
                right: constraints.maxWidth * .05,
              ),
              content: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        MdiIcons.alertCircleOutline,
                        color: Get.theme.colorScheme.error,
                        size: 80,
                      ),
                      Text(
                        "Você tem certeza?",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff2C2A2F),
                        ),
                      ),
                      Text(
                        "Nao será possível desfazer essa ação",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff2C2A2F).withOpacity(0.4),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Ops, me enganei",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Get.theme.colorScheme.error,
                    side: BorderSide(color: Get.theme.colorScheme.error),
                  ),
                  child: Text(
                    "Tenho certeza",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}
