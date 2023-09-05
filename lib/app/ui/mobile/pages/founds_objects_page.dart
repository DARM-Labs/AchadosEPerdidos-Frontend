import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/object_vertical_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FoundsObjectsWidget extends StatelessWidget {
  const FoundsObjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Objestos achados"),
      ),
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: ListView.separated(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            itemBuilder: (context, index) => ObjectVerticalWidget(id: index,),
            itemCount: 10,
            separatorBuilder: (context, index) =>
                const Padding(padding: EdgeInsets.all(10))),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(MdiIcons.plus),
        onPressed: ()=> Get.toNamed(Routes.FOUNDS_OBJECTS_ADD),
      ),
    );
  }
}
