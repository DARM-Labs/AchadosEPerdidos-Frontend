import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AvatarWidget extends StatelessWidget {
  AvatarWidget({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: CircleAvatar(
          backgroundColor: Get.theme.colorScheme.primary,
          foregroundColor: Get.theme.colorScheme.onPrimary,
          child: Icon(
            MdiIcons.accountOutline,
          )),
    );
  }
}
