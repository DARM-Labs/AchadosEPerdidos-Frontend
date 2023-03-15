import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/floating_button_controller.dart';
import '../../routes/app_routes.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FloatingButtonController>(
      init: FloatingButtonController(),
      initState: (_) {},
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (_.active)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    heroTag: "floating1",
                    onPressed: () {
                      Get.toNamed(Routes.ADD_FOUNDS);
                      _.closeButtons();
                    },
                    child: const Icon(Icons.search),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: FloatingActionButton(
                      heroTag: "floating2",
                      onPressed: () {
                        Get.toNamed(Routes.ADD_LOSES);
                        _.closeButtons();
                      },
                      child: const Icon(Icons.search_off),
                    ),
                  ),
                ],
              ),
            FloatingActionButton(
              onPressed: () {
                _.changeState();
              },
              child: Icon(
                _.active ? Icons.close : Icons.add,
              ),
            ),
          ],
        );
      },
    );
  }
}
