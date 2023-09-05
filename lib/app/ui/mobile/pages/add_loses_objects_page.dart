import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/app_bar_leading_object_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/app_bar_text_object_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/button_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/textField_widget.dart';
import 'package:achadoseperdidosifce/app/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../../controller/add_lose_controller.dart';

class AddLosesObjectsPage extends StatefulWidget {
  const AddLosesObjectsPage({Key? key}) : super(key: key);

  @override
  State<AddLosesObjectsPage> createState() => _AddLosesObjectsPageState();
}

class _AddLosesObjectsPageState extends State<AddLosesObjectsPage> {
  final AddLoseController controller = AddLoseController();
  File? image;

  String page = "initial";

  save() {
    setState(() {
      page = "success";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (page == "initial") {
      return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Adicionar Objetos",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Text(
                "perdido",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              InkWell(
                onTap: () => _showPicker(context),
                child: image == null
                    ? Container(
                        height: 200,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: const Icon(
                          Icons.image_outlined,
                          color: Colors.white,
                          size: 100,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.file(
                          image!,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: controller.formGlobalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Foto Opcional",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      Text(
                        "Digite o nome do objeto perdido",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "ex: garrafa azul",
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(180, 158, 158, 158),
                        ),
                      ),
                      TextFieldWidget(
                        onChanged: (value) => controller.name(value),
                        validator: (value) => Validators.combine([
                          () => Validators.isNotEmpty(value),
                          () => Validators.isEmail(value)
                        ]),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Ultimo local visto",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "ex: na arquibancada da quadra",
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(180, 158, 158, 158),
                        ),
                      ),
                      TextFieldWidget(
                        onChanged: (value) => controller.location(value),
                        validator: (value) => Validators.combine([
                          () => Validators.isNotEmpty(value),
                          () => Validators.isEmail(value)
                        ]),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ButtonWidget(title: 'Publicar', onPressed: save),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const AppBarTextObjectWidget(
            subtitle: "",
          ),
          leading: AppBarLeadingObjectWidget(
            onTap: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 187,
                      child: Image.asset('assets/images/logo_peoples.png',
                          fit: BoxFit.fitWidth),
                    ),
                    Text(
                      'Calma... Logo alguém vai encontrar seu objeto perdido e você será notificado, enquanto isso fique de olho em nosso aplicativo',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ButtonWidget(
                        title: 'inicio',
                        onPressed: () => selectPage(Routes.HOME)),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  Future<void> _showPicker(BuildContext context) async {
    await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Galeria'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    _getImage(false);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Câmera'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    _getImage(true);
                  },
                ),
              ],
            ),
          );
        });
  }

  Future<void> _getImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: isCamera ? ImageSource.camera : ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  selectPage(String page) {
    Get.back();
    Get.toNamed(page);
  }
}
