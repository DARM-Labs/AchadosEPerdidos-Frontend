import 'package:get/get.dart';

import '../../controller/auth_controller/login_controller.dart';
import '../../data/provider/api.dart';
import '../../data/repository/auth_repository.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(AuthRepository(ClientApi())));
  }
}
