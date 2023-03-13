import 'package:achadoseperdidosifce/app/controller/floating_button_controller.dart';
import 'package:achadoseperdidosifce/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingButtonWidget extends StatefulWidget {
  const FloatingButtonWidget({
    super.key,
  });

  @override
  State<FloatingButtonWidget> createState() => _FloatingButtonWidgetState();
}

class _FloatingButtonWidgetState extends State<FloatingButtonWidget> {
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
