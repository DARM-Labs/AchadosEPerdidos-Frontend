import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FoundsObjectsWidget extends StatelessWidget {
  const FoundsObjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objestos achados"),
      ),
      drawer: DrawerWidget(),
      floatingActionButton:
          FloatingActionButton(child: Icon(MdiIcons.plus), onPressed: () {}),
      body: SafeArea(child: Text('Objestos achados')),
    );
  }
}
