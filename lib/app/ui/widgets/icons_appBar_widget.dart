import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../routes/app_routes.dart';

class IconsAppBarWidget extends StatelessWidget {
  final double padding;
  const IconsAppBarWidget({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Get.toNamed(Routes.PROFILE),
            child: const Icon(MdiIcons.accountCircle),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(MdiIcons.ballotOutline),
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.ABOUT),
            child: const Icon(MdiIcons.helpCircle),
          ),
        ],
      ),
    );
  }
}
