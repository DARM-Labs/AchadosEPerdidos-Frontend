import 'package:achadoseperdidosifce/app/ui/widgets/EditField_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controller/profile_controller.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/photo_user_button_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mailController = TextEditingController(text: "michaelalves@gmail.com");
    TextEditingController passController = TextEditingController(text: "**********");

    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(title: const Text('Perfil')),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: controller.formGlobalKey,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      color: Get.theme.colorScheme.primary,
                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Obx(() => PhotoUserButtonWidget(
                                title:
                                    controller.photoUser.value == '' ? '' : '',
                                urlPhoto: controller.photoUser.value,
                                onTap: () => controller.selectPhoto(),
                              )),
                          Text("Michael Alves",
                              style: GoogleFonts.quicksand(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14)),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          125, 169, 169, 169),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    width: 19,
                                    height: 19,
                                    child: Center(
                                      child: Text("5",
                                          style: GoogleFonts.quicksand(
                                              color: Colors.white,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14)),
                                    ),
                                  ),
                                  Text("achados",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14)),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          125, 169, 169, 169),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    width: 19,
                                    height: 19,
                                    child: Center(
                                      child: Text("1",
                                          style: GoogleFonts.quicksand(
                                              color: Colors.white,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14)),
                                    ),
                                  ),
                                  Text("perdidos",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14)),
                                ],
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    EditFieldWidget(
                      passText: "********",
                      mailText: "E-mail",
                      mailController: mailController,
                      passController: passController,
                    ),
                    const SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ButtonWidget(
                            title: 'Sair',
                            showIcon: true,
                            onPressed: () => selectPage(Routes.LOGIN)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  selectPage(String page) {
    Get.back();
    Get.toNamed(page);
  }
}
