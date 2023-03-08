import 'package:achadoseperdidosifce/app/data/provider/data_objects.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/drawer_widget.dart';
import 'package:achadoseperdidosifce/app/ui/widgets/posted_object.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FoundsObjectsWidget extends StatelessWidget {
  const FoundsObjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final alturaMedia = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Objetos Postados",
        ),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(MdiIcons.plus), onPressed: () {}),
      body: SafeArea(
        child: SizedBox(
          height: alturaMedia,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: foundObjects.length,
            itemBuilder: (context, index) => PostedObject(
              object: foundObjects[index],
            ),
          ),
        ),
      ),
    );
  }
}
