import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../controller/home_controller.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/drawer_widget.dart';
import '../../../widgets/obejetcts_widget.dart';


class LosesObjectsPage extends GetView<HomeController> {
  const LosesObjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Objetos perdidos"),
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(MdiIcons.plus),
        onPressed: () => selectPage(Routes.ADD_LOSES_OBJECTS),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return const ObjecsWidget();
          },
        ),
      ),
    );
  }
}

selectPage(String page) {
  Get.back();
  Get.toNamed(page);
}
