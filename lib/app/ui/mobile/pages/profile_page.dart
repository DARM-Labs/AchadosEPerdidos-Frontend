import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/profile_controller.dart';
import '../../widgets/photo_user_button_widget.dart';


class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(title: const Text('Perfil')),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: controller.formGlobalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  Obx(() => PhotoUserButtonWidget(
                        title: controller.photoUser.value == ''
                            ? 'Adicionar foto'
                            : 'Editar foto',
                        urlPhoto: controller.photoUser.value,
                        onTap: () => controller.selectPhoto(),
                      )),
                ],
              ),
            ),
          ),
        )));
  }
}
