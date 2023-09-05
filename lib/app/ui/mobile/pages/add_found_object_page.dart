import 'package:achadoseperdidosifce/app/controller/add_found_controller.dart';
import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/app_bar_leading_object_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/app_bar_text_object_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/button_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/textField_widget.dart';
import 'package:achadoseperdidosifce/app/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddFoundObjectPage extends StatefulWidget {
  const AddFoundObjectPage({Key? key}) : super(key: key);

  @override
  State<AddFoundObjectPage> createState() => _AddFoundObjectPageState();
}

class _AddFoundObjectPageState extends State<AddFoundObjectPage> {
  final AddFoundController controller = AddFoundController();
  File? image;
  bool _isYesSelectedOwner = false;
  bool _isNoSelectedOwner = false;
  bool _isYesSelectedReception = false;
  bool _isNoSelectedReception = false;

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
          title: const AppBarTextObjectWidget(
            subtitle: "Encontrado",
          ),
          leading: AppBarLeadingObjectWidget(
            onTap: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
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
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Foto do objeto",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(150, 150, 150, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: controller.formGlobalKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFieldWidget(
                          label: 'Digite o nome do objeto perdido',
                          hintText: 'ex: Garrafa azul',
                          onChanged: (value) => controller.name(value),
                          validator: (value) => Validators.combine([
                            () => Validators.isNotEmpty(value),
                            () => Validators.isEmail(value)
                          ]),
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        TextFieldWidget(
                          label: 'Local onde foi encontrado',
                          hintText: 'ex: na arquibancada da quadra',
                          onChanged: (value) => controller.location(value),
                          validator: (value) => Validators.combine([
                            () => Validators.isNotEmpty(value),
                            () => Validators.isEmail(value)
                          ]),
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Entregou na recepção?",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: true,
                              groupValue: _isNoSelectedReception,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isNoSelectedReception = value!;
                                  _isYesSelectedReception = !value;
                                });
                              },
                            ),
                            const Text('Não'),
                            Radio(
                              value: true,
                              groupValue: _isYesSelectedReception,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isYesSelectedReception = value!;
                                  _isNoSelectedReception = !value;
                                });
                              },
                            ),
                            const Text('Sim'),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Entregou ao proprietário?",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: true,
                              groupValue: _isNoSelectedOwner,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isNoSelectedOwner = value!;
                                  _isYesSelectedOwner = !value;
                                });
                              },
                            ),
                            const Text('Não'),
                            Radio(
                              value: true,
                              groupValue: _isYesSelectedOwner,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isYesSelectedOwner = value!;
                                  _isNoSelectedOwner = !value;
                                });
                              },
                            ),
                            const Text('Sim'),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(20)),
                        ButtonWidget(title: 'Publicar', onPressed: save),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const AppBarTextObjectWidget(
            subtitle: "Encontrado",
          ),
          leading: AppBarLeadingObjectWidget(
            onTap: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/success_img.png"),
                  const SizedBox(height: 16),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      "Sua parte está feita, em breve o dono vai aparecer",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ButtonWidget(
                        title: 'Início',
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
                        }),
                  ),
                ],
              ),
            ),
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
}
