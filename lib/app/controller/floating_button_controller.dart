import 'package:get/get.dart';

class FloatingButtonController extends GetxController {
  bool active = false;

  void changeState() {
    active = !active;
    update();
  }

  void closeButtons() {
    active = false;
    update();
  }
}
