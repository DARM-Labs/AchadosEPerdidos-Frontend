import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../controller/home_controller.dart';
import '../../widgets/drawer_widget.dart';

class LosesObjectsPage extends GetView<HomeController> {
  const LosesObjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Objetos perdidos"),
          actions: [
            !GetPlatform.isAndroid
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      MdiIcons.plus,
                      size: 30,
                    ))
                : Container()
          ],
        ),
        drawer: DrawerWidget(),
        floatingActionButton: GetPlatform.isAndroid
            ? FloatingActionButton(child: Icon(MdiIcons.plus), onPressed: () {})
            : null,
        body: SafeArea(child: Text('LoseController')));
  }
}
