import 'package:achadoseperdidosifce/app/ui/widgets/object_vertical_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../controller/home_controller.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/drawer_widget.dart';


class LosesObjectsPage extends GetView<HomeController> {
  const LosesObjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Objetos perdidos"),
      ),
      drawer: const DrawerWidget(),

      body: SafeArea(
        child: ListView.separated(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            itemBuilder: (context, index) => const ObjectVerticalWidget(),
            itemCount: 10,
            separatorBuilder: (context, index) =>
                const Padding(padding: EdgeInsets.all(10))),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(MdiIcons.plus),
        onPressed: ()=> Get.toNamed(Routes.ADD_LOSES_OBJECTS),
      ),
    );
  }
}


selectPage(String page) {
  Get.back();
  Get.toNamed(page);
}
